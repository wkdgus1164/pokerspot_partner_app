import 'package:flutter/material.dart';

class BaseDialogTitleTemplate extends StatelessWidget {
  final Widget icon;
  final Widget title;

  const BaseDialogTitleTemplate({
    super.key,
    required this.icon,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        icon,
        const SizedBox(width: 12),
        title,
      ],
    );
  }
}
