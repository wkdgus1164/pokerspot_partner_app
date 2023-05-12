import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pokerspot_partner_app/common/constants/assets.dart';
import 'package:pokerspot_partner_app/common/constants/sizes.dart';
import 'package:pokerspot_partner_app/common/theme/typography.dart';

Widget slide1() {
  return Padding(
    padding: const EdgeInsets.all(padding64),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '대한민국 최초의\n홀덤펍 중개 플랫폼\n포커스팟입니다.',
              style: headlineMedium.copyWith(
                color: const Color.fromARGB(255, 42, 50, 59),
              ),
            ),
            const SizedBox(height: padding16),
            Text(
              '포커스팟은 밝고 건전한\n홀덤펍 문화를 선도합니다.',
              style: bodySmall.copyWith(
                color: const Color.fromARGB(180, 42, 50, 59),
              ),
            ),
          ],
        ),
        const SizedBox(height: padding64),
        SvgPicture.asset(Assets.slide1.path),
      ],
    ),
  );
}
