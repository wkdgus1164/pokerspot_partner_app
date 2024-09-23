import 'package:flutter/material.dart';
import 'package:pokerspot_partner_app/apps/global/global.dart';

class BusinessInfo extends StatelessWidget {
  const BusinessInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(32),
      child: Column(
        children: [
          Text(
            '온더그라운드 주식회사 · 대표이사 한장현',
            style: textTheme.labelMedium!.copyWith(
              color: colorGrey70,
            ),
          ),
          Text(
            '사업자등록번호 769 - 86 - 02741',
            style: textTheme.labelMedium!.copyWith(
              color: colorGrey70,
            ),
          ),
          Text(
            '인천광역시 부평구 원적로472번길 2, 4층 401호-에이113(부평동)',
            style: textTheme.labelMedium!.copyWith(
              color: colorGrey70,
            ),
          ),
          Text(
            '고객센터: andy@pokerspot.co.kr · 02 - 6736 - 0701',
            style: textTheme.labelMedium!.copyWith(
              color: colorGrey70,
            ),
          ),
        ],
      ),
    );
  }
}
