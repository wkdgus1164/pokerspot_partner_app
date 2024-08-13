import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pokerspot_partner_app/apps/global/constants/enums.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'game_data.freezed.dart';
part 'game_data.g.dart';

@freezed
class GameModel with _$GameModel {
  factory GameModel({
    required int id,
    required String title,
    required int buyIn,
    required int entry,
    required int blup,
    required int prize,
    required int duration,
    required bool isRealtime,
    required bool isNextGame,
    required bool isFirstGame,
    required GameType gameType,
    required bool isDailyGame,
  }) = _GameModel;
}

@riverpod
class GameData extends _$GameData {
  @override
  GameModel build() {
    return GameModel(
      id: 0,
      title: 'title',
      buyIn: 0,
      entry: 0,
      blup: 0,
      prize: 0,
      duration: 0,
      isRealtime: true,
      isNextGame: true,
      isFirstGame: true,
      gameType: GameType.DAILY,
      isDailyGame: true,
    );
  }
}
