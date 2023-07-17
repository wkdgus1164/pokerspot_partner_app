import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pokerspot_partner_app/common/routes/routes.dart';
import 'package:pokerspot_partner_app/common/theme/color.dart';
import 'package:pokerspot_partner_app/presentation/views/intro/components/intro_start_button.dart';
import 'package:pokerspot_partner_app/presentation/views/intro/components/swiper_root.dart';

class IntroView extends StatelessWidget {
  const IntroView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightColorScheme.background,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(child: slideSwiper(context)),
            IntroStartButton(
              text: '시작하기',
              onPressed: () => onStartButtonPressed(context),
            ),
          ],
        ),
      ),
    );
  }

  onStartButtonPressed(BuildContext context) {
    context.pushReplacement(CustomRouter.login.path);
  }
}
