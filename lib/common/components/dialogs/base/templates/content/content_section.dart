import 'package:flutter/material.dart';

class BaseDialogContentSection extends StatelessWidget {
  final String content;

  const BaseDialogContentSection({
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
      child: Text(
        content,
        style: TextStyle(
          color: Colors.grey.shade900.withOpacity(0.8),
        ),
      ),
    );
  }
}
