import 'package:flutter/material.dart';
import 'package:pokerspot_partner_app/apps/global/theme/color_scheme.dart';

SliderThemeData sliderThemeData = const SliderThemeData(
  thumbColor: Colors.white,
  rangeThumbShape: RoundRangeSliderThumbShape(
    enabledThumbRadius: 14,
    disabledThumbRadius: 14,
    elevation: 4,
  ),
  activeTrackColor: colorBrand60,
);
