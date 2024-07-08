import 'package:freezed_annotation/freezed_annotation.dart';

part 'min_entry_model.freezed.dart';

@freezed
class GameMinEntryModel with _$GameMinEntryModel {
  factory GameMinEntryModel({
    required int minEntry,
  }) = _GameMinEntryModel;

  GameMinEntryModel._();
}
