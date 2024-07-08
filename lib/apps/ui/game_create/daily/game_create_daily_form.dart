import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pokerspot_partner_app/apps/ui/game_create/daily/game_create_daily_form_vac.dart';
import 'package:pokerspot_partner_app/apps/ui/game_create/daily/providers/data.dart';

class GameCreateDailyForm extends StatefulHookConsumerWidget {
  const GameCreateDailyForm({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _GameCreateDailyFormState();
}

class _GameCreateDailyFormState extends ConsumerState<GameCreateDailyForm> {
  @override
  Widget build(BuildContext context) {
    final bool isFirstGame = ref.watch(gameCreateDailyDataProvider).firstGame;
    final bool isDailyGame = ref.watch(gameCreateDailyDataProvider).dailyGame;

    return GameCreateDailyFormVac(
      isFirstGame: isFirstGame,
      isDailyGame: isDailyGame,
      handleBuyInChange: _handleBuyInChange,
      handleMinEntryChange: _handleMinEntryChange,
      handleMaxEntryChange: _handleMaxEntryChange,
      handlePrizeRatioChange: _handlePrizeRatioChange,
      handleDurationChange: _handleDurationChange,
      handleFirstGameChange: _handleFirstGameChange,
      handleDailyGameChange: _handleDailyGameChange,
    );
  }

  void _handleBuyInChange(String? v) {
    if (v!.isEmpty) {
      ref.read(gameCreateDailyDataProvider.notifier).setBuyIn(0);
      ref.read(gameCreateDailyDataProvider.notifier).setGameName(
            '',
          );
    } else {
      ref.read(gameCreateDailyDataProvider.notifier).setBuyIn(
            int.parse(v),
          );
      ref.read(gameCreateDailyDataProvider.notifier).setGameName(
            '${int.parse(v)}만 데일리 토너먼트',
          );
    }
  }

  void _handleMinEntryChange(String? v) {
    if (v!.isEmpty) {
      ref.read(gameCreateDailyDataProvider.notifier).setMinEntry(0);
    } else {
      ref.read(gameCreateDailyDataProvider.notifier).setMinEntry(
            int.parse(v),
          );
    }
  }

  void _handleMaxEntryChange(String? v) {
    if (v!.isEmpty) {
      ref.read(gameCreateDailyDataProvider.notifier).setMaxEntry(0);
    } else {
      ref.read(gameCreateDailyDataProvider.notifier).setMaxEntry(
            int.parse(v),
          );
    }
  }

  void _handlePrizeRatioChange(String? v) {
    if (v!.isEmpty) {
      ref.read(gameCreateDailyDataProvider.notifier).setPrizeRatio(0);
    } else {
      ref.read(gameCreateDailyDataProvider.notifier).setPrizeRatio(
            int.parse(v),
          );
    }
  }

  void _handleDurationChange(String? v) {
    if (v!.isEmpty) {
      ref.read(gameCreateDailyDataProvider.notifier).setDuration(0);
    } else {
      ref.read(gameCreateDailyDataProvider.notifier).setDuration(
            int.parse(v),
          );
    }
  }

  void _handleFirstGameChange(bool v) {
    ref.read(gameCreateDailyDataProvider.notifier).setFirstGame(v);
  }

  void _handleDailyGameChange(bool v) {
    ref.read(gameCreateDailyDataProvider.notifier).setDailyGame(v);
  }
}
