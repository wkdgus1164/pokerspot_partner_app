import 'package:flutter/material.dart';
import 'package:pokerspot_partner_app/common/theme/color.dart';

class StatisticsListItemColumn extends StatelessWidget {
  const StatisticsListItemColumn({
    super.key,
    required this.text,
    required this.caption,
    this.isLastItem = false,
  });

  final String text;
  final String caption;
  final bool isLastItem;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          border: Border(
            right: BorderSide(
              color: isLastItem ? Colors.white : lightColorScheme.outline,
            ),
          ),
        ),
        child: Column(
          children: [
            Text(
              text,
              style: Theme.of(context).textTheme.titleMedium!.copyWith(
                    color: isLastItem
                        ? lightColorScheme.primary
                        : customColorScheme.onSurface1,
                    fontWeight: FontWeight.bold,
                  ),
            ),
            const SizedBox(height: 10),
            Text(
              caption,
              style: Theme.of(context).textTheme.titleSmall!.copyWith(
                    color: isLastItem
                        ? lightColorScheme.primary
                        : customColorScheme.onSurface3,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
