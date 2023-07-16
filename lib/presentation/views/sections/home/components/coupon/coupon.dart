import 'package:flutter/material.dart';
import 'package:pokerspot_partner_app/common/constants/sizes.dart';
import 'package:pokerspot_partner_app/common/theme/color.dart';
import 'package:pokerspot_partner_app/data/models/store/store_coupon.dart';
import 'package:pokerspot_partner_app/presentation/views/sections/home/components/coupon/coupon_card.dart';

class HomeCoupon extends StatelessWidget {
  const HomeCoupon({
    super.key,
    required this.coupons,
  });

  final List<StoreCouponModel> coupons;

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
          SingleChildScrollView(
            child: Row(
                children: coupons
                    .map((e) => CouponCard(
                          image: e.image,
                          title: e.title,
                          description: e.subtitle,
                          total: e.totalAmount,
                          used: e.usedAmount,
                          last: e.remainAmount,
                          isClickable: true,
                        ))
                    .toList()),
          ),
        ],
      ),
    );
  }
}
