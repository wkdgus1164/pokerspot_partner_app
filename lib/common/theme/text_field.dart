import 'package:flutter/material.dart';
import 'package:pokerspot_partner_app/common/theme/color.dart';

InputDecorationTheme inputDecorationTheme = InputDecorationTheme(
  enabledBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(4),
    borderSide: BorderSide(color: lightColorScheme.outline),
  ),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.circular(4),
    borderSide: BorderSide(width: 1, color: lightColorScheme.outline),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: lightColorScheme.primary.withAlpha(100)),
  ),
  hintStyle: TextStyle(
    fontSize: 16,
    fontFamily: 'Pretendard',
    fontWeight: FontWeight.w400,
    color: lightColorScheme.onSurfaceVariant,
  ),
);
