import 'package:flutter/material.dart';

class BaseDialogContentTemplate extends StatelessWidget {
  final Widget content;

  const BaseDialogContentTemplate({
    super.key,
    required this.content,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 8,
        horizontal: 24,
      ),
      child: content,
    );
  }
}
