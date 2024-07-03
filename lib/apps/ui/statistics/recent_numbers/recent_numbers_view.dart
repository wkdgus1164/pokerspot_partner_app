import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pokerspot_partner_app/apps/global/global.dart';
import 'package:pokerspot_partner_app/apps/ui/statistics/recent_numbers/item.dart';

class StatisticsRecentNumbersView extends StatefulHookConsumerWidget {
  const StatisticsRecentNumbersView({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _StatisticsRecentNumbersViewState();
}

class _StatisticsRecentNumbersViewState
    extends ConsumerState<StatisticsRecentNumbersView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 32,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            '최근 7일간 매장 통계를 확인할 수 있어요',
            style: textTheme.labelMedium!.copyWith(
              color: colorGrey60,
            ),
          ),
          const SizedBox(height: 16),
          const Row(
            children: [
              StatisticsRecentNumbersGridItem(
                title: '매장 조회',
                number: 10,
              ),
              SizedBox(width: 16),
              StatisticsRecentNumbersGridItem(
                title: '카톡방 접속',
                number: 10,
              ),
              SizedBox(width: 16),
              StatisticsRecentNumbersGridItem(
                title: '전화 걸기',
                number: 10,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
