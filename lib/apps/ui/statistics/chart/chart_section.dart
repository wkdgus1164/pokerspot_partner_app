import 'package:flutter/cupertino.dart';
import 'package:pokerspot_partner_app/apps/global/global.dart';
import 'package:pokerspot_partner_app/apps/ui/statistics/chart/chart.dart';

class StatisticsChartSection extends StatelessWidget {
  const StatisticsChartSection({
    super.key,
    required this.number,
    required this.startText,
    required this.endText,
    required this.dots,
    required this.caption,
  });

  final int number;
  final String startText;
  final String endText;
  final List<int> dots;
  final String caption;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 32,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            '최근 7일 간',
            style: textTheme.labelLarge!.copyWith(
              color: colorGrey40,
            ),
          ),
          const SizedBox(height: 4),
          Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: startText,
                  style: textTheme.titleLarge!.copyWith(
                    fontWeight: FontWeight.normal,
                    color: colorGrey40,
                  ),
                ),
                TextSpan(
                  text: '총 $number회',
                  style: textTheme.titleLarge!.copyWith(
                    fontWeight: FontWeight.bold,
                    color: colorBrand50,
                  ),
                ),
                TextSpan(
                  text: endText,
                  style: textTheme.titleLarge!.copyWith(
                    fontWeight: FontWeight.normal,
                    color: colorGrey40,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 4),
          Text(
            caption,
            style: textTheme.labelMedium!.copyWith(
              color: colorGrey60,
            ),
          ),
          const SizedBox(height: 16),
          StatisticsChart(dots: dots),
        ],
      ),
    );
  }
}
