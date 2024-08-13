import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pokerspot_partner_app/apps/global/constants/enums.dart';
import 'package:pokerspot_partner_app/apps/global/global.dart';
import 'package:pokerspot_partner_app/apps/ui/game/list/card/card_tag.dart';
import 'package:pokerspot_partner_app/common/caption/caption.dart';

class GameSortPage extends StatefulHookConsumerWidget {
  const GameSortPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _GameSortPageState();
}

class _GameSortPageState extends ConsumerState<GameSortPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('토너먼트 순서 변경'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: ReorderableListView.builder(
                buildDefaultDragHandles: false,
                shrinkWrap: true,
                itemCount: 20,
                header: const Caption(
                  title: '토너먼트 순서 변경',
                  caption:
                      '토너먼트 항목 우측 화살표 아이콘을 꾹 누른 상태로 위아래로 움직이면 순서를 변경할 수 있어요\n변경 후에는 반드시 변경하기 버튼을 눌러주세요',
                ),
                itemBuilder: (context, index) {
                  return Padding(
                    key: ValueKey(index),
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: Container(
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        border: Border.all(color: colorGrey90),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Text(
                                  '3만 데일리 토너먼트',
                                  style: textTheme.titleMedium!.copyWith(
                                    fontWeight: FontWeight.bold,
                                    color: colorGrey20,
                                  ),
                                ),
                                const SizedBox(height: 8),
                                const CardTag(
                                  isFirstGame: true,
                                  gameType: GameType.DAILY,
                                  isDailyGame: true,
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(width: 16),
                          ReorderableDragStartListener(
                            index: index,
                            child: const Icon(
                              Icons.unfold_more_rounded,
                              color: colorGrey80,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
                onReorder: (oldIndex, newIndex) {},
              ),
            ),
          ),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(16),
            child: FilledButton(
              onPressed: () {
                showAdaptiveDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog.adaptive(
                      title: const Text('순서 변경 완료'),
                      content: const Text('토너먼트 순서를 변경했어요'),
                      actions: [
                        TextButton(
                          onPressed: () {
                            context.pop();
                            context.pop();
                          },
                          child: const Text('확인'),
                        ),
                      ],
                    );
                  },
                );
              },
              child: const Text('변경하기'),
            ),
          ),
        ],
      ),
    );
  }
}
