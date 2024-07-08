import 'package:freezed_annotation/freezed_annotation.dart';

part 'first_game_model.freezed.dart';

@freezed
class GameFirstGameModel with _$GameFirstGameModel {
  factory GameFirstGameModel({
    required bool firstGame,
  }) = _GameFirstGameModel;

  GameFirstGameModel._();
}
