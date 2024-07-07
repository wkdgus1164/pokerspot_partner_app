import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'entry_data.freezed.dart';
part 'entry_data.g.dart';

@freezed
class GameCreateDailyEntryModel with _$GameCreateDailyEntryModel {
  factory GameCreateDailyEntryModel({
    required int entry,
  }) = _GameCreateDailyEntryModel;

  factory GameCreateDailyEntryModel.fromJson(Map<String, dynamic> json) =>
      _$GameCreateDailyEntryModelFromJson(json);
}

@riverpod
class GameCreateDailyEntryData extends _$GameCreateDailyEntryData {
  @override
  GameCreateDailyEntryModel build() {
    return GameCreateDailyEntryModel(
      entry: 0,
    );
  }

  void setEntry(int entry) {
    state = state.copyWith(entry: entry);
  }
}
