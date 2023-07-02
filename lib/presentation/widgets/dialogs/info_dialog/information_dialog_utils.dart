import 'package:flutter/material.dart';

import 'information_dialog.dart';

void showInformationDialog({
  required BuildContext context,
  String title = "",
  String content = "",
  VoidCallback? onConfirm,
  String confirmText = "확인",
}) {
  final autoDismiss = onConfirm == null;

  showDialog(
    barrierDismissible: autoDismiss,
    context: context,
    builder: (_) {
      return InformationDialog(
        title: title,
        content: content,
        onConfirm: onConfirm,
        confirmText: confirmText,
      );
    },
  );

  return;
}
