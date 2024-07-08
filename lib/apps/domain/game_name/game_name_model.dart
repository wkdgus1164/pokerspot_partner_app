import 'package:freezed_annotation/freezed_annotation.dart';

part 'game_name_model.freezed.dart';

@freezed
class GameNameModel with _$GameNameModel {
  factory GameNameModel({
    required String gameName,
  }) = _GameNameModel;

  GameNameModel._();
}
