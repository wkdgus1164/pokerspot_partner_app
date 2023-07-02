import 'package:flutter/material.dart';
import 'http_error_dialog.dart';

void showMyHttpErrorDialog({
  required BuildContext context,
  required String e,
  required VoidCallback onConfirm,
}) async {
  showDialog(
    barrierDismissible: false,
    context: context,
    builder: (_) {
      return MyHttpErrorDialog(
        errorText: e,
        onConfirm: onConfirm,
      );
    },
  );

  return;
}
