import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pokerspot_partner_app/apps/global/global.dart';
import 'package:pokerspot_partner_app/apps/ui/signup_intro/signup_intro_vac.dart';

class SignupIntroPage extends StatefulHookConsumerWidget {
  const SignupIntroPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _SignupIntroPageState();
}

class _SignupIntroPageState extends ConsumerState<SignupIntroPage> {
  @override
  Widget build(BuildContext context) {
    return SignupIntroVac(
      handleVerifyClick: _handleVerifyClick,
    );
  }

  void _handleVerifyClick() {
    context.push(CustomRouter.signupVerify.path);
  }
}
