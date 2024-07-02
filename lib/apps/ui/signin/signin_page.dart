import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pokerspot_partner_app/apps/ui/signin/signin_vac.dart';

class SigninPage extends StatefulHookConsumerWidget {
  const SigninPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SigninPageState();
}

class _SigninPageState extends ConsumerState<SigninPage> {
  final controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SigninVac(
      handleIdInputChange: _handleIdInputChange,
      handlePwInputChange: _handlePwInputChange,
      handleIdClearClick: _handleIdClearClick,
      togglePwVisibilityClick: _togglePwVisibilityClick,
      handleSigninButtonClick: _handleSigninButtonClick,
      handleForgetButtonClick: _handleForgetButtonClick,
    );
  }

  void _handleIdInputChange(String? value) {}
  void _handlePwInputChange(String? value) {}
  void _handleIdClearClick() {}
  void _togglePwVisibilityClick() {}
  void _handleSigninButtonClick() {}
  void _handleForgetButtonClick() {}
}
