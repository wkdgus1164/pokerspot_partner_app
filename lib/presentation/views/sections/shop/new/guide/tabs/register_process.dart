import 'package:flutter/material.dart';
import 'package:pokerspot_partner_app/common/constants/sizes.dart';
import 'package:pokerspot_partner_app/common/theme/color.dart';
import 'package:pokerspot_partner_app/presentation/views/sections/shop/new/guide/components/register_step.dart';

class ShopRegisterProcessTab extends StatelessWidget {
  const ShopRegisterProcessTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> steps = [
      '사업자 정보 인증',
      '매장 정보 작성',
      '검토 · 승인',
      '매장 등록 완료',
      '제휴 등록 · 연장'
    ];

    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: padding24,
          horizontal: padding16,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              '매장 등록 절차',
              style: Theme.of(context).textTheme.titleLarge!.copyWith(
                    fontWeight: FontWeight.bold,
                    color: customColorScheme.onSurface2,
                  ),
            ),
            const SizedBox(height: 6),
            Text(
              '매장 등록은 다음과 같은 절차로 진행됩니다.',
              style: Theme.of(context).textTheme.labelLarge!.copyWith(
                    color: customColorScheme.onSurface3,
                  ),
            ),
            const SizedBox(height: padding24),
            RegisterStepCard(textList: steps),
          ],
        ),
      ),
    );
  }
}
