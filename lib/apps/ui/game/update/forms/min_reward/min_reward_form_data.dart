import 'package:pokerspot_partner_app/apps/domain/min_reward/min_reward_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'min_reward_form_data.g.dart';

@riverpod
class GameUpdateMinRewardFormData extends _$GameUpdateMinRewardFormData {
  @override
  GameMinRewardModel build() {
    return GameMinRewardModel(minReward: 0);
  }

  void setMinReward(int minReward) {
    state = state.copyWith(minReward: minReward);
  }
}
