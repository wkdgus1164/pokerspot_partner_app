import 'package:freezed_annotation/freezed_annotation.dart';

part 'buy_in_model.freezed.dart';

@freezed
class GameBuyInModel with _$GameBuyInModel {
  factory GameBuyInModel({
    required int buyIn,
  }) = _gameBuyInModel;

  GameBuyInModel._();
}
