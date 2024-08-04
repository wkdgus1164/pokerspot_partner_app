import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'sheet_data.freezed.dart';

@freezed
class CustomSheetModel with _$CustomSheetModel {
  factory CustomSheetModel({
    required String title,
    required String subtitle,
    required Widget icon,
    required Function() onTap,
  }) = _CustomSheetModel;
}
