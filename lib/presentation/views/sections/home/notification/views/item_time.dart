import 'package:flutter/material.dart';
import 'package:pokerspot_partner_app/common/constants/sizes.dart';
import 'package:pokerspot_partner_app/common/theme/color.dart';

class NotificationItemTime extends StatelessWidget {
  const NotificationItemTime({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(padding16),
      color: lightColorScheme.surfaceVariant,
      child: Text(
        '9월 7일 (목)',
        style: Theme.of(context).textTheme.labelLarge!.copyWith(
              color: customColorScheme.onSurface3,
            ),
      ),
    );
  }
}
