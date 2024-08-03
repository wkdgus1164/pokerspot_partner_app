import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pokerspot_partner_app/apps/global/components/p_switch.dart';
import 'package:pokerspot_partner_app/apps/ui/game/update/forms/first_game/first_game_form_data.dart';

class GameUpdateFirstGameFormView extends StatefulHookConsumerWidget {
  const GameUpdateFirstGameFormView({
    super.key,
    required this.firstGame,
  });

  final bool firstGame;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _GameUpdateFirstGameFormViewState();
}

class _GameUpdateFirstGameFormViewState
    extends ConsumerState<GameUpdateFirstGameFormView> {
  bool get _firstGame => widget.firstGame;

  @override
  Widget build(BuildContext context) {
    return PSwitch(
      isOn: _firstGame,
      labelText: '첫 게임',
      handleChange: _handleChange,
    );
  }

  void _handleChange(bool v) {
    ref.read(gameUpdateFirstGameFormDataProvider.notifier).setFirstGame(v);
  }
}
