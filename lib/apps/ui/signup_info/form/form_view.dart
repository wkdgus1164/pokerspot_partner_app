import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pokerspot_partner_app/apps/ui/signup_info/form/form_vac.dart';
import 'package:pokerspot_partner_app/apps/ui/signup_info/providers/data.dart';
import 'package:pokerspot_partner_app/common/dialog/dialog_utils.dart';

class SignupInfoFormView extends StatefulHookConsumerWidget {
  const SignupInfoFormView({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _SignupInfoFormViewState();
}

class _SignupInfoFormViewState extends ConsumerState<SignupInfoFormView> {
  @override
  Widget build(BuildContext context) {
    final isPwVisible = ref.watch(signupInfoDataProvider).isPasswordVisible;
    final isPwConfirmVisible =
        ref.watch(signupInfoDataProvider).isPasswordConfirmVisible;

    return SignupInfoFormVac(
      handleIdChange: _handleIdChange,
      handleIdClearClick: _handleIdClearClick,
      handlePasswordChange: _handlePasswordChange,
      handlePasswordConfirmChange: _handlePasswordConfirmChange,
      isPwVisible: isPwVisible,
      isPwConfirmVisible: isPwConfirmVisible,
      togglePwConfirmVisibilityClick: _togglePwConfirmVisibilityClick,
      togglePwVisibilityClick: _togglePwVisibilityClick,
      handleTermClick: _handleTermClick,
    );
  }

  void _handleIdChange(String? v) {
    if (v == null) return;
    ref.read(signupInfoDataProvider.notifier).setId(v);
  }

  void _handleIdClearClick() {
    ref.read(signupInfoDataProvider.notifier).clearId();
  }

  void _handlePasswordChange(String? v) {
    if (v == null) return;
    ref.read(signupInfoDataProvider.notifier).setPassword(v);
  }

  void _handlePasswordConfirmChange(String? v) {
    if (v == null) return;
    ref.read(signupInfoDataProvider.notifier).setPasswordConfirm(v);
  }

  void _togglePwVisibilityClick() {
    ref.read(signupInfoDataProvider.notifier).togglePasswordVisibility();
  }

  void _togglePwConfirmVisibilityClick() {
    ref.read(signupInfoDataProvider.notifier).togglePasswordConfirmVisibility();
  }

  void _handleTermClick() {
    context.showCustomDialog(
      title: 'title',
      content: 'content',
      confirmText: 'confirmText',
    );
  }
}
