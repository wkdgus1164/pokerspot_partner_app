import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:logger/logger.dart';
import 'package:pokerspot_partner_app/apps/global/exception/exceptions.dart';
import 'package:pokerspot_partner_app/apps/global/global.dart';
import 'package:pokerspot_partner_app/apps/infra/api/signin/input/signin_input.dart';
import 'package:pokerspot_partner_app/apps/infra/api/signin/signin_api.dart';
import 'package:pokerspot_partner_app/apps/ui/signin/providers/data.dart';
import 'package:pokerspot_partner_app/apps/ui/signin/signin_vac.dart';
import 'package:pokerspot_partner_app/common/full_screen_loading/loading.dart';

/// 로그인 페이지
class SigninPage extends StatefulHookConsumerWidget {
  const SigninPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SigninPageState();
}

class _SigninPageState extends ConsumerState<SigninPage> {
  bool _isLoading = false;

  @override
  Widget build(BuildContext context) {
    // Controller
    final idController = useTextEditingController();

    // ID
    final idInput = ref.watch(signinDataProvider).id;
    final handleIdClear =
        idInput.isEmpty ? null : () => _handleIdClearClick(idController);

    // PW
    final pwInput = ref.watch(signinDataProvider).password;

    // Signin Button
    final isSigninButtonEnabled = idInput.isNotEmpty && pwInput.isNotEmpty;

    return Stack(
      children: [
        SigninVac(
          handleIdInputChange: _handleIdInputChange,
          handlePwInputChange: _handlePwInputChange,
          handleIdClearClick: handleIdClear,
          togglePwVisibilityClick: _togglePwVisibilityClick,
          handleSigninButtonClick:
              isSigninButtonEnabled ? _handleSigninButtonClick : null,
          handleForgetButtonClick: _handleForgetButtonClick,
          idController: idController,
          isPwVisible: ref.watch(signinDataProvider).isPwVisible,
        ),
        if (_isLoading) const FullScreenLoading(),
      ],
    );
  }

  void _handleIdInputChange(String? value) {
    if (value == null) return;
    ref.read(signinDataProvider.notifier).setId(value);
  }

  void _handlePwInputChange(String? value) {
    if (value == null) return;
    ref.read(signinDataProvider.notifier).setPassword(value);
  }

  void _handleIdClearClick(TextEditingController idController) {
    idController.clear();
    ref.read(signinDataProvider.notifier).clearId();
  }

  void _togglePwVisibilityClick() {
    ref.read(signinDataProvider.notifier).togglePwVisibility();
  }

  Future _handleSigninButtonClick() async {
    if (!mounted) return;
    setState(() => _isLoading = true);

    final signinData = ref.read(signinDataProvider);
    final response = await ref.read(signinApiProvider).signin(
          input: SigninInput(
            identifier: signinData.id,
            password: signinData.password,
          ),
        );

    if (!mounted) return;
    setState(() => _isLoading = false);

    Logger().d('SignIn Response: $response');

    response.when(
      success: (_, __, ___) {
        Logger().d('SignIn Success Handler Called');
        _handleSigninSuccess();
      },
      error: (error, message, _) {
        Logger().d(
            'SignIn Error Handler Called - Error: $error, Message: $message');
        _handleSigninError(error, message);
      },
    );
  }

  void _handleSigninSuccess() {
    Logger().d('SignIn Success Processing');
    context.go(CustomRouter.navigation.path);
  }

  void _handleSigninError(String error, String message) {
    Logger().e('SignIn Error Processing - Code: $error, Message: $message');

    final errorMessage = switch (error) {
      InvalidPasswordException.error => InvalidPasswordException().message,
      PartnerNotFoundException.error => PartnerNotFoundException().message,
      _ => message.isNotEmpty ? message : '로그인 중 오류가 발생했습니다.'
    };

    Fluttertoast.showToast(
      msg: errorMessage,
      toastLength: Toast.LENGTH_LONG,
      gravity: ToastGravity.BOTTOM,
    );
  }

  void _handleForgetButtonClick() {
    showAdaptiveDialog(
      context: context,
      barrierDismissible: true,
      builder: (context) {
        return AlertDialog.adaptive(
          title: const Text('회원정보 찾기'),
          content: const Text('회원정보 찾기'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('확인'),
            ),
          ],
        );
      },
    );
  }
}
