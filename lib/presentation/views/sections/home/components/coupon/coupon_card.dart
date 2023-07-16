import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:pokerspot_partner_app/common/constants/sizes.dart';
import 'package:pokerspot_partner_app/common/theme/color.dart';
import 'package:pokerspot_partner_app/data/models/store/store_coupon.dart';
import 'package:pokerspot_partner_app/presentation/effects/card_shadow.dart';

import '../../coupon_admin/views/coupon_admin.dart';

class CouponCard extends StatelessWidget {
  const CouponCard({
    super.key,
    required this.coupon,
    this.isClickable = false,
  });

  final StoreCouponModel coupon;
  final bool isClickable;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (isClickable) {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (_) => CouponAdminView(coupon: coupon),
            ),
          );
        } else {
          return;
        }
      },
      child: Container(
        decoration: ShapeDecoration(
          shape: RoundedRectangleBorder(
            side: BorderSide(color: lightColorScheme.outline),
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              padding: const EdgeInsets.all(padding16),
              child: Row(
                children: [
                  Container(
                    width: 80,
                    height: 80,
                    padding: const EdgeInsets.all(4),
                    decoration: ShapeDecoration(
                      color: lightColorScheme.primary,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      shadows: [cardShadow],
                    ),
                    child: CachedNetworkImage(
                      imageUrl: coupon.image,
                    ),
                  ),
                  const SizedBox(width: padding16),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          coupon.title,
                          style:
                              Theme.of(context).textTheme.titleMedium!.copyWith(
                                    color: customColorScheme.onSurface1,
                                    fontWeight: FontWeight.bold,
                                  ),
                        ),
                        const SizedBox(height: padding10),
                        Text(
                          coupon.subtitle,
                          style:
                              Theme.of(context).textTheme.labelMedium!.copyWith(
                                    color: customColorScheme.onSurface3,
                                  ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const Divider(height: 1, thickness: 1),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(vertical: padding16),
              child: Row(
                children: [
                  _buildItem(context, true, coupon.totalAmount, '총 수량'),
                  _buildItem(context, false, coupon.usedAmount, '사용 완료'),
                  _buildItem(context, false, coupon.remainAmount, '남은 수량'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Expanded _buildItem(
    BuildContext context,
    bool isPrimary,
    int number,
    String text,
  ) {
    return Expanded(
      child: Stack(
        alignment: Alignment.center,
        children: [
          Column(
            children: [
              Text(
                number.toString(),
                style: Theme.of(context).textTheme.displaySmall!.copyWith(
                      color: isPrimary
                          ? lightColorScheme.primary
                          : customColorScheme.onSurface2,
                      fontWeight: FontWeight.bold,
                    ),
              ),
              const SizedBox(height: padding10),
              Text(
                text,
                style: Theme.of(context).textTheme.titleSmall!.copyWith(
                      color: customColorScheme.onSurface3,
                    ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
