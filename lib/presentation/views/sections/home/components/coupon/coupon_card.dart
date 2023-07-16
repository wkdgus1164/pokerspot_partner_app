import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pokerspot_partner_app/common/constants/sizes.dart';
import 'package:pokerspot_partner_app/common/routes/base/home.dart';
import 'package:pokerspot_partner_app/common/theme/color.dart';
import 'package:pokerspot_partner_app/presentation/effects/card_shadow.dart';

class CouponCard extends StatelessWidget {
  const CouponCard({
    super.key,
    required this.image,
    required this.title,
    required this.description,
    required this.total,
    required this.used,
    required this.last,
    this.isClickable = false,
  });

  final String image;
  final String title;
  final String description;
  final int total;
  final int used;
  final int last;
  final bool isClickable;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (isClickable) {
          context.pushNamed(HomeRoutes.coupon.path);
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
                    child: Container(),
                  ),
                  const SizedBox(width: padding16),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          title,
                          style:
                              Theme.of(context).textTheme.titleMedium!.copyWith(
                                    color: customColorScheme.onSurface1,
                                    fontWeight: FontWeight.bold,
                                  ),
                        ),
                        const SizedBox(height: padding10),
                        Text(
                          description,
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
                  _buildItem(context, true, total, '총 수량'),
                  _buildItem(context, false, used, '사용 완료'),
                  _buildItem(context, false, last, '남은 수량'),
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
