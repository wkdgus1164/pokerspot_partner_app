import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pokerspot_partner_app/apps/global/constants/enums.dart';
import 'package:pokerspot_partner_app/apps/global/global.dart';
import 'package:pokerspot_partner_app/apps/ui/game/list/card/card.dart';
import 'package:pokerspot_partner_app/apps/ui/game/list/bottom_sheet/create_selection_sheet.dart';
import 'package:pokerspot_partner_app/apps/ui/navigation/drawer/drawer_view.dart';
import 'package:pokerspot_partner_app/common/caption/caption.dart';
import 'package:pokerspot_partner_app/common/placeholder/empty_with_button.dart';

class GameListPage extends StatefulHookConsumerWidget {
  const GameListPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _GameListPageState();
}

class _GameListPageState extends ConsumerState<GameListPage> {
  final String _title = '포커스팟 홀덤펍';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_title),
        actions: [
          IconButton(
            icon: const Icon(Icons.format_line_spacing_rounded),
            onPressed: () {
              context.push(CustomRouter.gameSort.path);
            },
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        label: const Text('토너먼트 생성'),
        icon: const Icon(Icons.add_rounded),
        onPressed: () {
          showModalBottomSheet(
            context: context,
            useSafeArea: true,
            builder: (context) {
              return GamesCreateModalBottomSheet(
                handleDailyClick: _handleDailyClick,
                handleGTDClick: _handleGTDClick,
              );
            },
          );
        },
      ),
      drawer: const NavigationDrawerView(),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Caption(
              title: '꼭 확인해주세요',
              caption:
                  '포커스팟은 홀덤펍의 정보 중개자로서, 해당 서비스 제공의 당사자가 아니에요.\n서비스의 예약 이용 및 환불, 불법적인 행위와 관련된 의무와 책임은 각 서비스 제공자에게 있어요.',
            ),
            const SizedBox(height: 16),
            ListView.separated(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: 10,
              separatorBuilder: (context, index) => const SizedBox(height: 16),
              itemBuilder: (context, index) {
                return GameCard(
                  gameTitle: '포커스팟 홀덤',
                  buyIn: 100,
                  entry: 10,
                  blup: 5,
                  prize: 100,
                  duration: 30,
                  isRealtime: true,
                  isNextGame: true,
                  isFirstGame: true,
                  gameType: GameType.DAILY,
                  isDailyGame: true,
                  handleUpdateButtonClick: _handleUpdateButtonClick,
                  toggleNextGameSwitch: (bool state) {},
                  toggleRealtimeSwitch: (bool state) {},
                );
              },
            ),
          ],
        ),
      ),
      // _buildPlaceholder(),
    );
  }

  void _handleDailyClick() {
    context.push(CustomRouter.gameCreateDaily.path);
  }

  void _handleGTDClick() {
    context.push(CustomRouter.gameCreateGtd.path);
  }

  void _handleUpdateButtonClick() {
    context.push(CustomRouter.gameUpdateDaily.path);
  }
}

Widget _buildPlaceholder() {
  return Center(
    child: Padding(
      padding: const EdgeInsets.all(16),
      child: EmptyWithButton(
        icon: Icons.list_rounded,
        message: '아직 등록된 토너먼트가 없어요.\n매장을 등록하셨다면, 토너먼트를 생성해 보세요.',
        buttonText: '토너먼트 생성하기',
        handleButtonClick: () {},
      ),
    ),
  );
}
