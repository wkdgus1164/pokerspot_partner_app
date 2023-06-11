import 'package:flutter/material.dart';

class BaseDialogButtonSection extends StatelessWidget {
  final Widget child;

  const BaseDialogButtonSection({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: child,
    );
  }
}
