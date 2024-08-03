import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pokerspot_partner_app/apps/global/global.dart';
import 'package:pokerspot_partner_app/apps/ui/game/create/forms/min_reward/min_reward_form_data.dart';

class GameCreateMinRewardFormView extends StatefulHookConsumerWidget {
  const GameCreateMinRewardFormView({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _GameCreateMinRewardFormViewState();
}

class _GameCreateMinRewardFormViewState
    extends ConsumerState<GameCreateMinRewardFormView> {
  @override
  Widget build(BuildContext context) {
    return PTextField(
      labelText: '최소 상금 (필수)',
      keyboardType: TextInputType.number,
      hintText: '최소 상금을 입력해주세요',
      handleChange: _handleChange,
      endText: '만',
    );
  }

  void _handleChange(String? v) {
    if (v!.isEmpty) {
      ref.read(gameCreateMinRewardFormDataProvider.notifier).setMinReward(0);
    } else {
      ref.read(gameCreateMinRewardFormDataProvider.notifier).setMinReward(
            int.parse(v),
          );
    }
  }
}
