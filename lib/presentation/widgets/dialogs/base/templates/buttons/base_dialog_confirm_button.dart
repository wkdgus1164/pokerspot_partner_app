import 'package:flutter/material.dart';

class BaseDialogConfirmButton extends StatelessWidget {
  final String text;
  final Function() onConfirm;

  const BaseDialogConfirmButton({
    super.key,
    this.text = "확인",
    required this.onConfirm,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onConfirm,
      child: Text(text),
    );
  }
}
