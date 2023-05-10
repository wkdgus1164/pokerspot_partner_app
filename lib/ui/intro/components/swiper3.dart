import 'package:flutter/material.dart';
import 'package:pokerspot_partner_app/common/constants/assets.dart';
import 'package:pokerspot_partner_app/common/constants/sizes.dart';
import 'package:pokerspot_partner_app/common/theme/typography.dart';

Widget slide3() {
  return Padding(
    padding: const EdgeInsets.all(padding64),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(Assets.slide3.path),
        Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: padding32),
            Text(
              '간편한 입점 절차',
              style: headlineMedium.copyWith(
                color: const Color.fromARGB(255, 42, 50, 59),
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: padding10),
            Text(
              '입점 절차가 매우 간편합니다.',
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
