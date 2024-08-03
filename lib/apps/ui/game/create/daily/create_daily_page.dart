import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pokerspot_partner_app/apps/global/global.dart';
import 'package:pokerspot_partner_app/apps/ui/game/create/daily/create_daily_form.dart';
import 'package:pokerspot_partner_app/apps/ui/game/create/daily/providers/daily_form_data.dart';
import 'package:pokerspot_partner_app/common/caption/caption.dart';
import 'package:pokerspot_partner_app/common/dialog/dialog_utils.dart';

class GameCreateDailyPage extends StatefulHookConsumerWidget {
  const GameCreateDailyPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _GameCreateDailyPageState();
}

class _GameCreateDailyPageState extends ConsumerState<GameCreateDailyPage> {
  @override
  Widget build(BuildContext context) {
    final model = ref.watch(gameCreateDailyFormDataProvider);
    final handleSubmit = !model.isValid ? null : () => _handleSubmit();

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
                    model.buyIn == 0 ? '토너먼트 이름' : '${model.buyIn}만 데일리 토너먼트',
                    style: textTheme.titleLarge!.copyWith(
                      fontWeight: FontWeight.bold,
                      color: model.buyIn == 0 ? colorGrey80 : colorGrey20,
                    ),
                  ),
                  const SizedBox(height: 16),
                  const Caption(caption: '아래 조건을 설정하면 자동으로 이름이 생성돼요'),
                  const GameCreateDailyForm(),
                ],
              ),
            ),
          ),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(16),
            child: FilledButton(
              onPressed: handleSubmit,
              child: const Text('추가하기'),
            ),
          ),
        ],
      ),
    );
  }

  _handleSubmit() {
    final model = ref.read(gameCreateDailyFormDataProvider);

    context.showCustomDialog(
      title: '데일리 토너먼트 등록하기',
      content: '''
buyIn: ${model.buyIn}\n
minEntry: ${model.minEntry}\n
maxEntry: ${model.maxEntry}\n
prize: ${model.prize}\n
duration: ${model.duration}\n
firstGame: ${model.firstGame}\n
everyDay: ${model.everyDay}''',
      confirmText: '확인',
    );
  }
}
