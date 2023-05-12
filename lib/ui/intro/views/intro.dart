import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pokerspot_partner_app/ui/intro/components/intro_start_button.dart';
import 'package:pokerspot_partner_app/common/routes/routes.dart';
import 'package:pokerspot_partner_app/common/theme/color.dart';
import 'package:pokerspot_partner_app/ui/intro/components/swiper_root.dart';

class IntroView extends StatelessWidget {
  const IntroView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(child: slideSwiper()),
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
    context.pushNamed(Routes.signupBusiness.path);
  }
}
