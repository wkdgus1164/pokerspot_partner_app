import 'dart:io';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'edit_page_data.freezed.dart';
part 'edit_page_data.g.dart';

@freezed
class BusinessInfoEditModel with _$BusinessInfoEditModel {
  factory BusinessInfoEditModel({
    required File fileName,
    required bool isValid,
  }) = _BusinessInfoEditModel;

  // factory BusinessInfoEditModel.fromJson(Map<String, dynamic> json) =>
  //     _$BusinessInfoEditModelFromJson(json);
}

@riverpod
class BusinessInfoEditData extends _$BusinessInfoEditData {
  @override
  BusinessInfoEditModel build() {
    return BusinessInfoEditModel(
      fileName: File(""),
      isValid: false,
    );
  }

  void validate() {
    state = state.copyWith(isValid: !state.isValid);
  }
}
