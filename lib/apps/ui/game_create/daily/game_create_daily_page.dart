import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:logger/logger.dart';
import 'package:pokerspot_partner_app/apps/global/global.dart';
import 'package:pokerspot_partner_app/apps/ui/game_create/daily/forms/game_name/game_name_form_data.dart';
import 'package:pokerspot_partner_app/apps/ui/game_create/daily/game_create_daily_form.dart';
import 'package:pokerspot_partner_app/apps/ui/game_create/daily/game_create_daily_form_data.dart';
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
    final gameName = ref.watch(gameCreateGameNameFormDataProvider).gameName;
    Logger().i('gameName: $gameName');

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
                    gameName.isEmpty ? '토너먼트 이름' : gameName,
                    style: textTheme.titleLarge!.copyWith(
                      fontWeight: FontWeight.bold,
                      color: gameName.isEmpty ? colorGrey80 : colorGrey20,
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
    ref.read(gameCreateDailyFormDataProvider.notifier).createGame();
  }
}
