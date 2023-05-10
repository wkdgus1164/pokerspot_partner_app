import 'package:flutter/material.dart';
import 'package:pokerspot_partner_app/common/constants/assets.dart';
import 'package:pokerspot_partner_app/common/constants/sizes.dart';
import 'package:pokerspot_partner_app/common/theme/typography.dart';

Widget slide4() {
  return Padding(
    padding: const EdgeInsets.all(padding64),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(Assets.slide4.path),
        Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: padding32),
            Text(
              '제휴 무료',
              style: headlineMedium.copyWith(
                color: const Color.fromARGB(255, 42, 50, 59),
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: padding10),
            Text(
              '프로모션 기간동안 제휴는 무료입니다.',
              style: label.copyWith(
                color: const Color.fromARGB(180, 42, 50, 59),
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ],
    ),
  );
}
