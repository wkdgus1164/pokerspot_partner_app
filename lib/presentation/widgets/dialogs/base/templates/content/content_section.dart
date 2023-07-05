import 'package:flutter/material.dart';
import 'package:pokerspot_partner_app/common/theme/color.dart';

class BaseDialogContentSection extends StatelessWidget {
  final String content;

  const BaseDialogContentSection({
    super.key,
    required this.content,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.8,
      color: lightColorScheme.surface,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Text(
          content,
          style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                color: customColorScheme.onSurface3,
              ),
        ),
      ),
    );
  }
}
