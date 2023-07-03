import 'package:flutter/material.dart';
import 'package:pokerspot_partner_app/common/constants/sizes.dart';
import 'package:pokerspot_partner_app/common/theme/color.dart';

class StatisticsTotal extends StatelessWidget {
  const StatisticsTotal({super.key, required this.total});

  final int total;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: padding16),
      decoration: BoxDecoration(
        color: customColorScheme.surfaceContainer2,
      ),
      child: Column(
        children: [
          Text(
            '최근 30일',
            style: Theme.of(context).textTheme.titleMedium!.copyWith(
                  color: Colors.white,
                ),
          ),
          const SizedBox(height: padding10),
          Text(
            '$total건 예약',
            style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
          ),
        ],
      ),
    );
  }
}
