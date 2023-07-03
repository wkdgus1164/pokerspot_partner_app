import 'package:flutter/material.dart';
import 'package:pokerspot_partner_app/common/theme/color.dart';

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
      color: lightColorScheme.surface,
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: child,
    );
  }
}