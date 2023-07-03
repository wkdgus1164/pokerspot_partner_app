import 'package:flutter/material.dart';
import 'package:pokerspot_partner_app/presentation/widgets/dialogs/picker_dialog_with_checkbox/picker_dialog_with_checkbox.dart';

void showPickerDialogWithCheckbox({
  required BuildContext context,
  String title = "",
  Function(int)? onSelectedItemChanged,
  List<String> selections = const [],
  VoidCallback? onConfirm,
  VoidCallback? onCancel,
  bool autoDismiss = false,
  String checkboxLabel = "",
  bool isChecked = false,
  Function()? onCheckboxChanged,
}) {
  showDialog(
      context: context,
      builder: (_) {
        return PickerDialogWithCheckbox(
          title: title,
          selections: selections,
          onCheckboxChanged: onCheckboxChanged,
          checkboxLabel: checkboxLabel,
          isChecked: isChecked,
          onSelectedItemChanged: onSelectedItemChanged,
          onCancel: onCancel,
          onConfirm: onConfirm,
        );
      });
}
