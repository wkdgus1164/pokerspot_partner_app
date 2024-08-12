import 'package:flutter/material.dart';
import 'package:numberpicker/numberpicker.dart';
import 'package:pokerspot_partner_app/apps/global/global.dart';

class PTimePicker extends StatelessWidget {
  const PTimePicker({
    super.key,
    required this.value,
    required this.minValue,
    required this.maxValue,
    this.step = 1,
    required this.handleChenge,
  });

  final int value;
  final int minValue;
  final int maxValue;
  final int step;
  final Function(int) handleChenge;

  @override
  Widget build(BuildContext context) {
    return NumberPicker(
      value: value,
      minValue: minValue,
      maxValue: maxValue,
      step: step,
      decoration: BoxDecoration(
        border: Border.all(color: colorGrey80),
        borderRadius: const BorderRadius.all(
          Radius.circular(8),
        ),
      ),
      selectedTextStyle: _selectedTextStyle,
      textMapper: (numberText) => numberText.padLeft(2, '0'),
      textStyle: _textStyle,
      onChanged: handleChenge,
    );
  }

  TextStyle get _selectedTextStyle => const TextStyle(color: colorBrand50);
  TextStyle get _textStyle => const TextStyle(color: colorGrey50);
}
