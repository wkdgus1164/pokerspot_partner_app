import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pokerspot_partner_app/apps/global/components/p_switch.dart';
import 'package:pokerspot_partner_app/apps/ui/game/update/forms/every_day/every_day_form_data.dart';

class GameUpdateEveryDayFormView extends StatefulHookConsumerWidget {
  const GameUpdateEveryDayFormView({
    super.key,
    required this.everyDay,
  });

  final bool everyDay;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _GameUpdateEveryDayFormViewState();
}

class _GameUpdateEveryDayFormViewState
    extends ConsumerState<GameUpdateEveryDayFormView> {
  bool get _everyDay => widget.everyDay;

  @override
  Widget build(BuildContext context) {
    return PSwitch(
      isOn: _everyDay,
      labelText: '매일 진행',
      handleChange: _handleChange,
    );
  }

  void _handleChange(bool v) {
    ref.read(gameUpdateEveryDayFormDataProvider.notifier).setEveryDay(v);
  }
}
