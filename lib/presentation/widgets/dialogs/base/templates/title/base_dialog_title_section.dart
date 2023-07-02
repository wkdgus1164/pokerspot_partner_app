import 'package:flutter/material.dart';
import 'package:pokerspot_partner_app/common/theme/color.dart';

class BaseDialogTitleSection extends StatelessWidget {
  final Widget icon;
  final String title;

  const BaseDialogTitleSection({
    super.key,
    required this.icon,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: lightColorScheme.surface,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          icon,
          const SizedBox(width: 12),
          Text(
            title,
            style: const TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 18,
            ),
          ),
        ],
      ),
    );
  }
}
