import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'game_update_daily_form_data.freezed.dart';
part 'game_update_daily_form_data.g.dart';

@freezed
class GameUpdateDailyFormModel with _$GameUpdateDailyFormModel {
  factory GameUpdateDailyFormModel({
    required String gameName,
    required int buyIn,
    required int minEntry,
    required int maxEntry,
    required int prize,
    required int duration,
    required bool firstGame,
    required bool everyDay,
    required bool isValid,
  }) = _GameUpdateDailyFormModel;

  factory GameUpdateDailyFormModel.fromJson(Map<String, dynamic> json) =>
      _$GameUpdateDailyFormModelFromJson(json);

  GameUpdateDailyFormModel._();
}

@riverpod
class GameUpdateDailyFormData extends _$GameUpdateDailyFormData {
  @override
  GameUpdateDailyFormModel build() {
    return GameUpdateDailyFormModel(
      gameName: '10만 데일리 토너먼트',
      buyIn: 10,
      minEntry: 10,
      maxEntry: 20,
      prize: 30,
      duration: 10,
      firstGame: true,
      everyDay: false,
      isValid: true,
    );
  }
}
