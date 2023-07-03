import 'package:flutter/material.dart';
import 'package:pokerspot_partner_app/common/constants/sizes.dart';
import 'package:pokerspot_partner_app/common/theme/color.dart';
import 'package:pokerspot_partner_app/presentation/views/sections/home/components/coupon/coupon_card.dart';

class HomeCoupon extends StatelessWidget {
  const HomeCoupon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(padding16),
      color: lightColorScheme.surface,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '쿠폰 현황',
            style: Theme.of(context).textTheme.titleLarge!.copyWith(
                  fontWeight: FontWeight.bold,
                  color: customColorScheme.onSurface1,
                ),
          ),
          const SizedBox(height: padding16),
          const CouponCard(
            title: '1만원 즉시할인 쿠폰',
            description: '매장이용권 1만원 할인 · 기간 무제한',
            total: 8,
            used: 4,
            last: 4,
            isClickable: true,
          ),
        ],
      ),
    );
  }
}
