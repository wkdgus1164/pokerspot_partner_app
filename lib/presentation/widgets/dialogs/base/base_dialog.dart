import 'package:flutter/material.dart';

class BaseDialog extends StatelessWidget {
  final Widget? title;
  final Widget content;

  const BaseDialog({
    super.key,
    this.title,
    required this.content,
  });

  @override
  Widget build(BuildContext context) {
    return SimpleDialog(
      title: title,
      clipBehavior: Clip.hardEdge,
      surfaceTintColor: Colors.white,
      insetPadding: const EdgeInsets.all(0),
      titlePadding: const EdgeInsets.all(0),
      contentPadding: const EdgeInsets.all(0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
        side: const BorderSide(color: Colors.transparent),
      ),
      children: [content],
    );
  }
}
