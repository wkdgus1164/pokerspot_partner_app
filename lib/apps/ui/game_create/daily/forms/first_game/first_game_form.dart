import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pokerspot_partner_app/apps/global/components/p_switch.dart';
import 'package:pokerspot_partner_app/apps/ui/game_create/daily/forms/every_day/every_day_form_data.dart';

class GameCreateFirstGameFormView extends StatefulHookConsumerWidget {
  const GameCreateFirstGameFormView({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _GameCreateFirstGameFormViewState();
}

class _GameCreateFirstGameFormViewState
    extends ConsumerState<GameCreateFirstGameFormView> {
  @override
  Widget build(BuildContext context) {
    final data = ref.watch(gameCreateEverydayFormDataProvider).everyDay;

    return PSwitch(
      isOn: data,
      labelText: '매일 진행',
      handleChange: _handleChange,
    );
  }

  void _handleChange(bool v) {
    ref.read(gameCreateEverydayFormDataProvider.notifier).setEveryDay(v);
  }
}
