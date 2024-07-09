import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pokerspot_partner_app/apps/global/components/p_switch.dart';
import 'package:pokerspot_partner_app/apps/ui/game_create/daily/forms/first_game/first_game_form_data.dart';

class GameCreateEveryDayFormView extends StatefulHookConsumerWidget {
  const GameCreateEveryDayFormView({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _GameCreateEveryDayFormViewState();
}

class _GameCreateEveryDayFormViewState
    extends ConsumerState<GameCreateEveryDayFormView> {
  @override
  Widget build(BuildContext context) {
    final data = ref.watch(gameCreateFirstGameFormDataProvider).firstGame;

    return PSwitch(
      isOn: data,
      labelText: '첫 게임',
      handleChange: _handleChange,
    );
  }

  void _handleChange(bool v) {
    ref.read(gameCreateFirstGameFormDataProvider.notifier).setFirstGame(v);
  }
}
