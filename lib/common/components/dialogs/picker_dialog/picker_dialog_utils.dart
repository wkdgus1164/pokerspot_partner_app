import 'package:flutter/material.dart';
import 'package:pokerspot_partner_app/common/components/dialogs/picker_dialog/picker_dialog.dart';

void showPickerDialog({
  required BuildContext context,
  String title = "",
  Function(int)? onSelectedItemChanged,
  List<String> selections = const [],
  VoidCallback? onConfirm,
  VoidCallback? onCancel,
  bool autoDismiss = false,
}) {
  showDialog(
      context: context,
      builder: (_) {
        return PickerDialog(
          title: title,
          selections: selections,
          onSelectedItemChanged: onSelectedItemChanged,
          onCancel: onCancel,
          onConfirm: onConfirm,
        );
      });
}
