import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:pokerspot_partner_app/apps/global/global.dart';
import 'package:pokerspot_partner_app/apps/ui/statistics/chart/chart_styles.dart';

class StatisticsChart extends StatelessWidget {
  const StatisticsChart({
    super.key,
    required this.dots,
  });

  final List<int> dots;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 16 / 10,
      child: Container(
        padding: const EdgeInsets.only(
          top: 16,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: colorGrey98,
        ),
        child: Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
          ),
          child: LineChart(
            LineChartData(
              gridData: pFlGridData,
              titlesData: pFlTitlesData(dots: dots),
              borderData: pFlBorderData,
              minY: 0,
              lineTouchData: pLineTouchData,
              lineBarsData: [
                pLineChartBarData(dots: dots),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
