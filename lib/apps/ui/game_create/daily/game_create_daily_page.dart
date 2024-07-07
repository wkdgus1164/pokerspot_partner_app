import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pokerspot_partner_app/apps/global/components/p_switch.dart';
import 'package:pokerspot_partner_app/apps/global/global.dart';
import 'package:pokerspot_partner_app/apps/ui/game_create/daily/entry/entry_view.dart';
import 'package:pokerspot_partner_app/apps/ui/game_create/daily/entry/entry_data.dart';
import 'package:pokerspot_partner_app/common/caption/caption.dart';

class GameCreateDailyPage extends StatefulHookConsumerWidget {
  const GameCreateDailyPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _GameCreateDailyPageState();
}

class _GameCreateDailyPageState extends ConsumerState<GameCreateDailyPage> {
  @override
  Widget build(BuildContext context) {
    final entry = ref.watch(gameCreateDailyEntryDataProvider).entry;

    return Scaffold(
      appBar: AppBar(title: const Text('데일리 토너먼트 추가')),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    '토너먼트 이름',
                    style: textTheme.titleLarge!.copyWith(
                      fontWeight: FontWeight.bold,
                      color: colorGrey80,
                    ),
                  ),
                  const SizedBox(height: 16),
                  const Caption(caption: '아래 조건을 설정하면 자동으로 이름이 생성돼요'),
                  const SizedBox(height: 16),
                  PSelector(
                    labelText: '참가비(필수)',
                    placeholderText: '참가비를 선택해주세요',
                    valueText: entry != 0 ? '$entry만' : null,
                    handleClick: () {
                      showModalBottomSheet(
                        context: context,
                        useSafeArea: true,
                        builder: (context) {
                          return const GameCreateDailyEntryView();
                        },
                      );
                    },
                  ),
                  const SizedBox(height: 16),
                  PSelector(
                    labelText: '최소 엔트리',
                    placeholderText: '최소 엔트리를 선택해주세요',
                    handleClick: () {
                      showModalBottomSheet(
                        context: context,
                        builder: (context) {
                          return Container(
                            height: 200,
                            color: Colors.white,
                          );
                        },
                      );
                    },
                  ),
                  const SizedBox(height: 16),
                  PSelector(
                    labelText: '최대 엔트리',
                    placeholderText: '최대 엔트리를 선택해주세요',
                    handleClick: () {
                      showModalBottomSheet(
                        context: context,
                        builder: (context) {
                          return Container(
                            height: 200,
                            color: Colors.white,
                          );
                        },
                      );
                    },
                  ),
                  const SizedBox(height: 16),
                  PSelector(
                    labelText: '프라이즈',
                    placeholderText: '프라이즈를 선택해주세요',
                    handleClick: () {
                      showModalBottomSheet(
                        context: context,
                        builder: (context) {
                          return Container(
                            height: 200,
                            color: Colors.white,
                          );
                        },
                      );
                    },
                  ),
                  const SizedBox(height: 16),
                  PSelector(
                    labelText: '듀레이션',
                    placeholderText: '듀레이션을 선택해주세요',
                    handleClick: () {
                      showModalBottomSheet(
                        context: context,
                        builder: (context) {
                          return Container(
                            height: 200,
                            color: Colors.white,
                          );
                        },
                      );
                    },
                  ),
                  const SizedBox(height: 16),
                  PSelector(
                    labelText: '최소 상금',
                    placeholderText: '최소 상금을 선택해주세요',
                    handleClick: () {
                      showModalBottomSheet(
                        context: context,
                        builder: (context) {
                          return Container(
                            height: 200,
                            color: Colors.white,
                          );
                        },
                      );
                    },
                  ),
                  const SizedBox(height: 16),
                  PSwitch(
                    labelText: '첫 게임',
                    handleChange: (v) {},
                  ),
                  const SizedBox(height: 16),
                  PSwitch(
                    labelText: '매일 진행',
                    handleChange: (v) {},
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(16),
            child: FilledButton(
              onPressed: () {},
              child: const Text('추가하기'),
            ),
          ),
        ],
      ),
    );
  }
}
