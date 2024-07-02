import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pokerspot_partner_app/apps/ui/signin/providers/data.dart';
import 'package:pokerspot_partner_app/apps/ui/signin/signin_vac.dart';
import 'package:pokerspot_partner_app/common/dialog/dialog_utils.dart';

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
    if (value != null) {
      ref.read(signinDataProvider.notifier).setId(value);
    } else {
      ref.read(signinDataProvider.notifier).clearId();
    }
  }

  void _handlePwInputChange(String? value) {
    if (value != null) {
      ref.read(signinDataProvider.notifier).setPassword(value);
    } else {
      ref.read(signinDataProvider.notifier).clearPassword();
    }
  }

  void _handleIdClearClick(TextEditingController idController) {
    idController.clear();
    ref.read(signinDataProvider.notifier).clearId();
  }

  void _togglePwVisibilityClick() {
    ref.read(signinDataProvider.notifier).togglePwVisibility();
  }

  void _handleSigninButtonClick() {
    context.showCustomDialog(
      title: '로그인',
      content: '로그인',
      confirmText: '확인',
    );
  }

  void _handleForgetButtonClick() {
    context.showCustomDialog(
      title: '회원정보 찾기',
      content: '회원정보 찾기',
      confirmText: '확인',
    );
  }
}
