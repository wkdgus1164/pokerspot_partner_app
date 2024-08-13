import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pokerspot_partner_app/apps/ui/game/update/daily/update_daily_form.dart';
import 'package:pokerspot_partner_app/apps/ui/game/update/daily/providers/daily_form_data.dart';

class GameUpdateDailyPage extends StatefulHookConsumerWidget {
  const GameUpdateDailyPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _GameUpdateDailyPageState();
}

class _GameUpdateDailyPageState extends ConsumerState<GameUpdateDailyPage> {
  @override
  Widget build(BuildContext context) {
    final data = ref.watch(gameUpdateDailyFormDataProvider);

    return Scaffold(
      appBar: AppBar(title: const Text('데일리 토너먼트 편집')),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    GameUpdateForm(
                      buyIn: data.buyIn,
                      minEntry: data.minEntry,
                      maxEntry: data.maxEntry,
                      prize: data.prize,
                      duration: data.duration,
                      firstGame: data.firstGame,
                      everyDay: data.everyDay,
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
                child: const Text('편집하기'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
