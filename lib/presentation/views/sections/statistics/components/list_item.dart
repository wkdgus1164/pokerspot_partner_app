import 'package:flutter/material.dart';
import 'package:pokerspot_partner_app/common/constants/sizes.dart';
import 'package:pokerspot_partner_app/common/theme/color.dart';
import 'package:pokerspot_partner_app/presentation/effects/card_shadow.dart';
import 'package:pokerspot_partner_app/presentation/views/sections/statistics/components/list_item_column.dart';

class StatisticsListItem extends StatelessWidget {
  const StatisticsListItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(padding16),
      margin: const EdgeInsets.all(padding16),
      clipBehavior: Clip.antiAlias,
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          side: BorderSide(color: lightColorScheme.surfaceVariant),
          borderRadius: BorderRadius.circular(12),
        ),
        shadows: [cardShadow],
      ),
      child: Column(
        children: [
          Text(
            '몬스터 홀덤펍',
            style: Theme.of(context).textTheme.titleMedium!.copyWith(
                  fontWeight: FontWeight.bold,
                ),
          ),
          const SizedBox(height: 10),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
            decoration: ShapeDecoration(
              color: lightColorScheme.surfaceVariant,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            child: Text(
              '제휴기간 | 22.07.04 ~ 22.08.04',
              style: Theme.of(context).textTheme.labelSmall!.copyWith(
                    color: customColorScheme.onSurface3,
                  ),
            ),
          ),
          const SizedBox(height: padding10),
          Container(
            padding: const EdgeInsets.symmetric(vertical: padding16),
            child: Row(
              children: [
                StatisticsListItemColumn(text: 100.toString(), caption: '예약건수'),
                StatisticsListItemColumn(text: 5.toString(), caption: '쿠폰사용'),
                const StatisticsListItemColumn(
                  text: '5~30만원',
                  caption: '추정수익',
                  isLastItem: true,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
