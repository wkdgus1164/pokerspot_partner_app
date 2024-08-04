import 'dart:io';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'edit_page_data.freezed.dart';
part 'edit_page_data.g.dart';

@freezed
class BizEditModel with _$BizEditModel {
  factory BizEditModel({
    required File fileName,
    required bool isValid,
  }) = _BizEditModel;
}

@riverpod
class BizEditData extends _$BizEditData {
  @override
  BizEditModel build() {
    return BizEditModel(
      fileName: File(""),
      isValid: false,
    );
  }

  void validate() {
    state = state.copyWith(isValid: !state.isValid);
  }
}
