import 'package:flutter/material.dart';

import 'selection_dialog.dart';

void showSelectionDialog({
  required BuildContext context,
  String title = "",
  String content = "",
  VoidCallback? onConfirm,
  VoidCallback? onCancel,
  bool autoDismiss = false,
  Widget icon = const Icon(Icons.info_outline),
}) {
  showDialog(
    barrierDismissible: autoDismiss,
    context: context,
    builder: (_) {
      return SelectionDialog(
        icon: icon,
        title: title,
        content: content,
        onConfirm: onConfirm,
        onCancel: onCancel,
      );
    },
  );

  return;
}
