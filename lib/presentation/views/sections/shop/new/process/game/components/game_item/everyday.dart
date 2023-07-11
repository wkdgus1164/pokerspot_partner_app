import 'package:flutter/material.dart';
import 'package:pokerspot_partner_app/common/constants/sizes.dart';
import 'package:pokerspot_partner_app/common/theme/color.dart';

class EveryDay extends StatelessWidget {
  const EveryDay({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: padding10,
        vertical: 6,
      ),
      decoration: BoxDecoration(
        border: Border.all(color: lightColorScheme.outline),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          Text(
            '매일 진행',
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.labelLarge!.copyWith(
                  color: customColorScheme.onSurface1,
                ),
          ),
        ],
      ),
    );
  }
}
