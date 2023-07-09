import 'package:flutter/material.dart';
import 'package:pokerspot_partner_app/common/constants/sizes.dart';
import 'package:pokerspot_partner_app/common/theme/color.dart';

class PartnershipRegisterSelection extends StatelessWidget {
  const PartnershipRegisterSelection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '제휴 상품 선택',
            style: Theme.of(context).textTheme.titleMedium!.copyWith(
                  fontWeight: FontWeight.bold,
                  color: customColorScheme.onSurface1,
                ),
          ),
          const SizedBox(height: padding16),
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: padding16,
              vertical: padding24,
            ),
            decoration: ShapeDecoration(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                side: BorderSide(color: lightColorScheme.primary),
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.check_circle_rounded,
                          color: lightColorScheme.primary,
                        ),
                        const SizedBox(width: padding10),
                        Text(
                          '무료 제휴(30일)',
                          style:
                              Theme.of(context).textTheme.titleMedium!.copyWith(
                                    color: customColorScheme.onSurface2,
                                  ),
                        ),
                        const SizedBox(width: padding10),
                        Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 6),
                          decoration: ShapeDecoration(
                            color: lightColorScheme.primary,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(2),
                            ),
                          ),
                          child: Row(
                            children: [
                              Text(
                                'EVENT',
                                style: Theme.of(context)
                                    .textTheme
                                    .labelSmall!
                                    .copyWith(
                                      color: lightColorScheme.onPrimary,
                                    ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    const SizedBox(width: 10),
                    Text(
                      '0원',
                      style: Theme.of(context).textTheme.titleMedium!.copyWith(
                            fontWeight: FontWeight.bold,
                            color: customColorScheme.onSurface2,
                          ),
                    ),
                  ],
                ),
                const SizedBox(height: padding16),
                Container(
                  padding: const EdgeInsets.all(padding16),
                  decoration: ShapeDecoration(
                    color: lightColorScheme.surfaceVariant,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4),
                    ),
                  ),
                  child: Column(
                    children: [
                      Text(
                        '무료 제휴 기간 중 4건 이상의 예약이 발생한 경우 이후부터 무료 제휴 상품은 이용하실 수 없습니다.\n',
                        style:
                            Theme.of(context).textTheme.labelMedium!.copyWith(
                                  color: customColorScheme.onSurface3,
                                ),
                      ),
                      Text(
                        '무료 제휴 기간 중 4건 미만의 예약이 발생하는 경우에는 무료 제휴 상품을 지속적으로 이용하실 수 있습니다.',
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
        ],
      ),
    );
  }
}
