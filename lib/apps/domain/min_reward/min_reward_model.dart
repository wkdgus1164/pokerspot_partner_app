import 'package:freezed_annotation/freezed_annotation.dart';

part 'min_reward_model.freezed.dart';

@freezed
class GameMinRewardModel with _$GameMinRewardModel {
  factory GameMinRewardModel({
    required int minReward,
  }) = _GameMinRewardModel;

  GameMinRewardModel._();
}
