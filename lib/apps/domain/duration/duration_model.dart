import 'package:freezed_annotation/freezed_annotation.dart';

part 'duration_model.freezed.dart';

@freezed
class GameDurationModel with _$GameDurationModel {
  factory GameDurationModel({
    required int duration,
  }) = _GameDurationModel;

  GameDurationModel._();
}
