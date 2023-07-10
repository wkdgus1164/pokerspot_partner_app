import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:pokerspot_partner_app/common/theme/color.dart';

class CustomProgressBar extends StatelessWidget {
  const CustomProgressBar({super.key, required this.percent});

  final double percent;

  @override
  Widget build(BuildContext context) {
    return LinearPercentIndicator(
      padding: const EdgeInsets.all(0),
      percent: percent,
      lineHeight: 10,
      backgroundColor: lightColorScheme.primaryContainer,
      progressColor: lightColorScheme.primary,
      barRadius: const Radius.circular(10),
      width: MediaQuery.of(context).size.width - 32,
    );
  }
}
