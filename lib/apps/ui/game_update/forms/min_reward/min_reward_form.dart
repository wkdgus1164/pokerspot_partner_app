import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pokerspot_partner_app/apps/global/global.dart';
import 'package:pokerspot_partner_app/apps/ui/game_update/forms/min_reward/min_reward_form_data.dart';

class GameUpdateMinRewardFormView extends StatefulHookConsumerWidget {
  const GameUpdateMinRewardFormView({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _GameUpdateMinRewardFormViewState();
}

class _GameUpdateMinRewardFormViewState
    extends ConsumerState<GameUpdateMinRewardFormView> {
  @override
  Widget build(BuildContext context) {
    final data = ref.watch(gameUpdateMinRewardFormDataProvider).minReward;
    TextEditingController controller = TextEditingController(
      text: data.toString(),
    );

    return PTextField(
      labelText: '최소 상금 (필수)',
      keyboardType: TextInputType.number,
      hintText: '최소 상금을 입력해주세요',
      controller: controller,
      handleChange: _handleChange,
      endText: '만',
    );
  }

  void _handleChange(String? v) {
    if (v!.isEmpty) {
      ref.read(gameUpdateMinRewardFormDataProvider.notifier).setMinReward(0);
    } else {
      ref.read(gameUpdateMinRewardFormDataProvider.notifier).setMinReward(
            int.parse(v),
          );
    }
  }
}
