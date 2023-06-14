import 'package:flutter/material.dart';
import 'package:pokerspot_partner_app/common/components/dialogs/input_dialog_with_checkbox/input_dialog_with_checkbox.dart';

void showInputDialogWithCheckbox({
  required BuildContext context,
  String title = "",
  VoidCallback? onConfirm,
  VoidCallback? onCancel,
  bool autoDismiss = false,
  String checkboxLabel = "",
  bool isChecked = false,
  Function()? onCheckboxChanged,
  Function(String)? onTextFieldChanged,
  bool disableOnChecked = false,
}) {
  showDialog(
    context: context,
    builder: (_) {
      return InputDialogWithCheckbox(
        title: title,
        onCheckboxChanged: onCheckboxChanged,
        checkboxLabel: checkboxLabel,
        isChecked: isChecked,
        disableOnChecked: disableOnChecked,
        onTextFieldChanged: onTextFieldChanged,
        onCancel: onCancel,
        onConfirm: onConfirm,
      );
    },
  );
}
