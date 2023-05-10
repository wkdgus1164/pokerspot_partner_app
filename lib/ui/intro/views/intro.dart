import 'package:flutter/material.dart';
import 'package:pokerspot_partner_app/common/components/button.dart';
import 'package:pokerspot_partner_app/common/theme/color.dart';
import 'package:pokerspot_partner_app/ui/intro/components/swiper_root.dart';

class IntroFirstView extends StatelessWidget {
  const IntroFirstView({super.key});

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
              onPressed: onStartButtonPressed(),
            ),
          ],
        ),
      ),
    );
  }

  onStartButtonPressed() {}
}
