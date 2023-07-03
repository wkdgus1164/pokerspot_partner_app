import 'package:flutter/material.dart';
import 'package:pokerspot_partner_app/common/constants/sizes.dart';
import 'package:pokerspot_partner_app/common/theme/color.dart';

class MoreNoticeBody extends StatelessWidget {
  const MoreNoticeBody({super.key, required this.content});

  final String content;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: lightColorScheme.surfaceVariant,
      child: Padding(
        padding: const EdgeInsets.all(padding16),
        child: Text(
          content,
          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                color: customColorScheme.onSurface3,
              ),
        ),
      ),
    );
  }
}
