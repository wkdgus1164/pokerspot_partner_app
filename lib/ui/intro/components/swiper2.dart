import 'package:flutter/material.dart';
import 'package:pokerspot_partner_app/common/constants/assets.dart';
import 'package:pokerspot_partner_app/common/constants/sizes.dart';
import 'package:pokerspot_partner_app/common/theme/color.dart';
import 'package:pokerspot_partner_app/common/theme/typography.dart';

Widget slide2() {
  return Padding(
    padding: const EdgeInsets.all(padding64),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(Assets.slide2.path),
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: padding32),
            Text(
              '다양한 서비스',
              style: headlineMedium.copyWith(color: greyVariant6),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: padding10),
            Text(
              '다양한 서비스를 한눈에 비교하세요.',
              style: label.copyWith(color: greyVariant6.withOpacity(0.6)),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ],
    ),
  );
}
