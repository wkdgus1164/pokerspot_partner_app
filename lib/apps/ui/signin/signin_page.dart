import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pokerspot_partner_app/apps/global/global.dart';
import 'package:pokerspot_partner_app/apps/ui/signin/providers/data.dart';
import 'package:pokerspot_partner_app/apps/ui/signin/signin_vac.dart';

class SigninPage extends StatefulHookConsumerWidget {
  const SigninPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SigninPageState();
}

class _SigninPageState extends ConsumerState<SigninPage> {
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

    return SigninVac(
      handleIdInputChange: _handleIdInputChange,
      handlePwInputChange: _handlePwInputChange,
      handleIdClearClick: handleIdClear,
      togglePwVisibilityClick: _togglePwVisibilityClick,
      handleSigninButtonClick:
          isSigninButtonEnabled ? _handleSigninButtonClick : null,
      handleForgetButtonClick: _handleForgetButtonClick,
      idController: idController,
      isPwVisible: ref.watch(signinDataProvider).isPwVisible,
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

  void _handleSigninButtonClick() {
    context.go(CustomRouter.navigation.path);
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
