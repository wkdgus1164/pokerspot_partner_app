import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pokerspot_partner_app/apps/global/global.dart';
import 'package:pokerspot_partner_app/apps/ui/intro/intro_vac.dart';

class IntroPage extends StatefulHookConsumerWidget {
  const IntroPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _IntroPageState();
}

class _IntroPageState extends ConsumerState<IntroPage> {
  @override
  Widget build(BuildContext context) {
    return IntroVac(
      handleSignupClick: _handleSignupClick,
      handleSigninClick: _handleSigninClick,
    );
  }

  void _handleSignupClick() {
    context.push(CustomRouter.signupIntro.path);
  }

  void _handleSigninClick() {
    context.push(CustomRouter.signin.path);
  }
}
