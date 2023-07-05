import 'package:flutter/material.dart';
import 'package:pokerspot_partner_app/common/theme/color.dart';

class BaseDialogTitleSection extends StatelessWidget {
  final Widget icon;
  final String title;

  const BaseDialogTitleSection({
    super.key,
    this.icon = const Icon(Icons.info_outline_rounded),
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: lightColorScheme.surface,
      padding: const EdgeInsets.only(
        left: 24,
        top: 16,
        bottom: 16,
        right: 16,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          icon,
          const SizedBox(width: 16),
          Text(
            title,
            style: Theme.of(context).textTheme.titleLarge!.copyWith(
                  fontWeight: FontWeight.bold,
                  color: customColorScheme.onSurface2,
                ),
          ),
        ],
      ),
    );
  }
}
