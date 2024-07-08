import 'package:freezed_annotation/freezed_annotation.dart';

part 'every_day_model.freezed.dart';

@freezed
class GameEveryDayModel with _$GameEveryDayModel {
  factory GameEveryDayModel({
    required bool everyDay,
  }) = _GameEveryDayModel;

  GameEveryDayModel._();
}
