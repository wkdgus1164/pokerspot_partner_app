import 'package:freezed_annotation/freezed_annotation.dart';

part 'prize_model.freezed.dart';

@freezed
class GamePrizeModel with _$GamePrizeModel {
  factory GamePrizeModel({
    required int prize,
  }) = _GamePrizeModel;

  GamePrizeModel._();
}
