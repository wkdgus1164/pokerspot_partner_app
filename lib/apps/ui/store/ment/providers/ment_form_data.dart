import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:logger/logger.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'ment_form_data.g.dart';
part 'ment_form_data.freezed.dart';

@freezed
class StoreMentFormModel with _$StoreMentFormModel {
  factory StoreMentFormModel({
    required String ment,
  }) = _StoreMentFormModel;

  factory StoreMentFormModel.fromJson(Map<String, dynamic> json) =>
      _$StoreMentFormModelFromJson(json);
}

@riverpod
class StoreMentFormData extends _$StoreMentFormData {
  @override
  StoreMentFormModel build() {
    return StoreMentFormModel(ment: '');
  }

  void setMent(String ment) {
    Logger().d("ment: $ment");
    state = state.copyWith(ment: ment);
  }
}
