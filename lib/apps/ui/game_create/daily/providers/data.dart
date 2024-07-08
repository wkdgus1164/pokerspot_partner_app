import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'data.freezed.dart';
part 'data.g.dart';

@freezed
class GameCreateDailyModel with _$GameCreateDailyModel {
  factory GameCreateDailyModel({
    required String gameName,
    required int buyIn,
    required int minEntry,
    required int maxEntry,
    required int prizeRatio,
    required int duration,
    required bool firstGame,
    required bool dailyGame,
  }) = _GameCreateDailyModel;

  GameCreateDailyModel._();

  bool get isGameNameAvailble =>
      buyIn > 0 &&
      minEntry > 0 &&
      maxEntry > 0 &&
      prizeRatio > 0 &&
      duration > 0;
}

@riverpod
class GameCreateDailyData extends _$GameCreateDailyData {
  @override
  GameCreateDailyModel build() {
    return GameCreateDailyModel(
      gameName: '',
      buyIn: 0,
      minEntry: 0,
      maxEntry: 0,
      prizeRatio: 0,
      duration: 0,
      firstGame: false,
      dailyGame: false,
    );
  }

  void setGameName(String gameName) {
    state = state.copyWith(gameName: gameName);
  }

  void setBuyIn(int buyIn) {
    state = state.copyWith(buyIn: buyIn);
  }

  void setMinEntry(int minEntry) {
    state = state.copyWith(minEntry: minEntry);
  }

  void setMaxEntry(int maxEntry) {
    state = state.copyWith(maxEntry: maxEntry);
  }

  void setPrizeRatio(int prizeRatio) {
    state = state.copyWith(prizeRatio: prizeRatio);
  }

  void setDuration(int duration) {
    state = state.copyWith(duration: duration);
  }

  void setFirstGame(bool firstGame) {
    state = state.copyWith(firstGame: firstGame);
  }

  void setDailyGame(bool dailyGame) {
    state = state.copyWith(dailyGame: dailyGame);
  }
}
