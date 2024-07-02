import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pokerspot_partner_app/apps/ui/signup_info/form/form_vac.dart';

class SignupInfoFormView extends StatefulHookConsumerWidget {
  const SignupInfoFormView({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _SignupInfoFormViewState();
}

class _SignupInfoFormViewState extends ConsumerState<SignupInfoFormView> {
  @override
  Widget build(BuildContext context) {
    return SignupInfoFormVac(
      handleIdChange: _handleIdChange,
      handlePasswordChange: _handlePasswordChange,
      handlePasswordConfirmChange: _handlePasswordConfirmChange,
      handleTermClick: _handleTermClick,
    );
  }

  void _handleIdChange(String? v) {}
  void _handlePasswordChange(String? v) {}
  void _handlePasswordConfirmChange(String? v) {}
  void _handleTermClick() {}
}
