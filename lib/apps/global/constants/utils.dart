import 'package:flutter/material.dart';

class Utils {
  static TextEditingValue approveTextFieldNumberMax(
    TextEditingValue oldValue,
    TextEditingValue newValue,
    int max,
  ) {
    if (newValue.text.isEmpty) {
      return newValue;
    }
    final int? value = int.tryParse(newValue.text);
    if (value != null && value <= max) {
      return newValue;
    }
    return oldValue;
  }
}
