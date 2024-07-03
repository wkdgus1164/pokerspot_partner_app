import 'package:collection/collection.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:pokerspot_partner_app/apps/global/global.dart';

FlGridData pFlGridData = FlGridData(
  show: true,
  getDrawingHorizontalLine: (value) {
    return const FlLine(
      color: colorGrey95,
      strokeWidth: 1,
    );
  },
  getDrawingVerticalLine: (value) {
    return const FlLine(
      color: colorGrey95,
      strokeWidth: 1,
    );
  },
);

FlTitlesData pFlTitlesData({required List<int> dots}) {
  return FlTitlesData(
    show: true,
    rightTitles: const AxisTitles(
      sideTitles: SideTitles(showTitles: false),
    ),
    topTitles: const AxisTitles(
      sideTitles: SideTitles(showTitles: false),
    ),
    bottomTitles: const AxisTitles(
      sideTitles: SideTitles(
        showTitles: false,
      ),
    ),
    leftTitles: AxisTitles(
      sideTitles: SideTitles(
        showTitles: true,
        reservedSize: calculateReservedSize(dots),
        getTitlesWidget: (v, m) => Text(
          v.toInt().toString(),
          style: textTheme.labelMedium!.copyWith(
            color: colorGrey70,
          ),
        ),
      ),
    ),
  );
}

double calculateReservedSize(List<int> dots) {
  final textStyle = textTheme.labelMedium!.copyWith(color: colorGrey80);

  double maxWidth = 0;

  for (var title in dots) {
    final textPainter = TextPainter(
      text: TextSpan(text: title.toString(), style: textStyle),
      textDirection: TextDirection.ltr,
    )..layout();
    if (textPainter.width > maxWidth) {
      maxWidth = textPainter.width;
    }
  }

  return maxWidth + 10;
}

FlBorderData pFlBorderData = FlBorderData(
  show: true,
  border: Border.all(color: Colors.transparent),
);

LineChartBarData pLineChartBarData({required List<int> dots}) {
  return LineChartBarData(
    spots: getSpots(dots),
    dotData: const FlDotData(show: false),
    isCurved: true,
    barWidth: 5,
    gradient: const LinearGradient(
      colors: [
        colorBrand70,
        colorBrand50,
      ],
    ),
    belowBarData: BarAreaData(
      show: true,
      gradient: LinearGradient(
        colors: [
          colorBrand70.withOpacity(0.2),
          colorBrand50.withOpacity(0.2),
        ],
      ),
    ),
  );
}

List<FlSpot> getSpots(List<int> dots) {
  late List<FlSpot> spots = [];

  dots.forEachIndexed(
    (index, element) {
      spots.add(
        FlSpot(
          index.toDouble(),
          element.toDouble(),
        ),
      );
    },
  );

  return spots;
}

LineTouchData pLineTouchData = LineTouchData(
  touchTooltipData: LineTouchTooltipData(
    getTooltipColor: (touchedSpot) => colorGrey95,
    getTooltipItems: (List<LineBarSpot> touchedSpots) {
      return touchedSpots.map((LineBarSpot touchedSpot) {
        final flSpot = touchedSpot;
        return LineTooltipItem(
          '${flSpot.y.toInt()}회',
          textTheme.labelLarge!.copyWith(
            color: colorGrey60,
          ),
        );
      }).toList();
    },
  ),
);
