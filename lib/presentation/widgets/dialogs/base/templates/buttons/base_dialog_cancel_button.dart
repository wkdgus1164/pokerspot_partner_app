import 'package:flutter/material.dart';

class BaseDialogCancelButton extends StatelessWidget {
  final String text;
  final Function() onCancel;

  const BaseDialogCancelButton({
    super.key,
    this.text = "취소",
    required this.onCancel,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onCancel,
      child: Text(text),
    );
  }
}
