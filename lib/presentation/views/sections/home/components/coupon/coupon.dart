import 'package:flutter/material.dart';
import 'package:pokerspot_partner_app/common/constants/sizes.dart';
import 'package:pokerspot_partner_app/common/theme/color.dart';
import 'package:pokerspot_partner_app/presentation/effects/card_shadow.dart';

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
          const SizedBox(height: 16),
          Container(
            decoration: ShapeDecoration(
              shape: RoundedRectangleBorder(
                side: BorderSide(color: lightColorScheme.outline),
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            child: Column(
              children: [
                Container(
                  width: double.infinity,
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
                              '1만원 즉시할인 쿠폰',
                              style: Theme.of(context)
                                  .textTheme
                                  .titleMedium!
                                  .copyWith(
                                    color: customColorScheme.onSurface1,
                                    fontWeight: FontWeight.bold,
                                  ),
                            ),
                            const SizedBox(height: padding10),
                            Text(
                              '매장이용권 1만원 할인 · 기간 무제한',
                              style: Theme.of(context)
                                  .textTheme
                                  .labelMedium!
                                  .copyWith(
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
                      _buildItem(context, true, 8, '총 수량'),
                      _buildItem(context, false, 4, '사용 완료'),
                      _buildItem(context, false, 4, '남은 수량'),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
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
                '$number',
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
