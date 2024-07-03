import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pokerspot_partner_app/apps/ui/navigation/drawer/drawer_view.dart';
import 'package:pokerspot_partner_app/apps/ui/statistics/chart/chart_section.dart';
import 'package:pokerspot_partner_app/apps/ui/statistics/recent_numbers/recent_numbers_view.dart';
import 'package:pokerspot_partner_app/common/placeholder/empty_with_button.dart';

class StatisticsPage extends StatefulHookConsumerWidget {
  const StatisticsPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _StatisticsPageState();
}

class _StatisticsPageState extends ConsumerState<StatisticsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('통계'),
      ),
      drawer: const NavigationDrawerView(),
      body: const SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            StatisticsRecentNumbersView(),
            StatisticsChartSection(
              startText: '내 매장을 ',
              number: 10,
              endText: ' 조회했어요',
              dots: [1, 2, 5, 9, 5, 6, 7],
              caption: '손님이 매장을 조회한 횟수를 확인할 수 있어요',
            ),
            StatisticsChartSection(
              startText: '오픈채팅방을 ',
              number: 10,
              endText: ' 접속했어요',
              dots: [1, 2, 5, 9, 5, 6, 7],
              caption: '손님이 내 매장의 상세 페이지에서 오픈채팅방 버튼을 누른 횟수에요',
            ),
            StatisticsChartSection(
              startText: '전화를 ',
              number: 10,
              endText: ' 걸었어요',
              dots: [1, 2, 5, 9, 5, 6, 7],
              caption: '손님이 내 매장의 상세 페이지에서 전화걸기 버튼을 누른 횟수에요',
            ),
          ],
        ),
      ),
      // _buildPlaceholder(),
    );
  }

  Widget _buildPlaceholder() {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: EmptyWithButton(
          icon: Icons.bar_chart_rounded,
          message:
              '아직 매장 통계가 없어요.\n최근에 등록한 매장이라면 아직 통계 데이터가 없을 수 있어요.\n\n아직 등록한 매장이 없다면, 새로운 매장을 등록해 보세요.',
          buttonText: '매장 등록하기',
          handleButtonClick: () {},
        ),
      ),
    );
  }
}
