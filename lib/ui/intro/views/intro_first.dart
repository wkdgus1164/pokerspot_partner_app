import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pokerspot_partner_app/common/constants/assets.dart';
import 'package:pokerspot_partner_app/common/theme/color.dart';

class IntroFirstView extends StatelessWidget {
  const IntroFirstView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Center(child: SvgPicture.asset(Assets.logoFull.path)),
    );
  }
}
