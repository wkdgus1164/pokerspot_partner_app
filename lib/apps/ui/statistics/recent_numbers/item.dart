import 'package:flutter/material.dart';
import 'package:pokerspot_partner_app/apps/global/global.dart';

class StatisticsRecentNumbersGridItem extends StatelessWidget {
  const StatisticsRecentNumbersGridItem({
    super.key,
    required this.title,
    required this.number,
  });

  final String title;
  final int number;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: colorGrey95,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          children: [
            Text(
              title,
              style: textTheme.labelMedium!.copyWith(
                color: colorGrey50,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              '$number회',
              style: textTheme.labelLarge!.copyWith(
                color: colorGrey20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
