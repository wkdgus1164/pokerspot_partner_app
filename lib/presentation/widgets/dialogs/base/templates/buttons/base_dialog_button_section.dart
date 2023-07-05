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
      color: lightColorScheme.surface,
      padding: const EdgeInsets.only(right: 24, bottom: 16),
      child: child,
    );
  }
}
