import 'package:flutter/material.dart';
import 'package:pokerspot_partner_app/common/constants/assets.dart';
import 'package:pokerspot_partner_app/common/constants/sizes.dart';
import 'package:pokerspot_partner_app/common/theme/color.dart';

Widget slide4(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.all(padding64),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(Assets.slide4.path),
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: padding32),
            Text(
              '제휴 무료',
              style: Theme.of(context).textTheme.titleLarge,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: padding10),
            Text(
              '프로모션 기간동안 제휴는 무료입니다.',
              style: Theme.of(context).textTheme.labelMedium!.copyWith(
                    color: customColorScheme.onSurface3,
                  ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ],
    ),
  );
}
