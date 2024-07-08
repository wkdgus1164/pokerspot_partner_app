import 'package:freezed_annotation/freezed_annotation.dart';

part 'max_entry_model.freezed.dart';

@freezed
class GameMaxEntryModel with _$GameMaxEntryModel {
  factory GameMaxEntryModel({
    required int maxEntry,
  }) = _GameMaxEntryModel;

  GameMaxEntryModel._();
}
