import 'package:flutter/material.dart';
import 'package:pokerspot_partner_app/common/theme/color.dart';

FilledButtonThemeData filledButtonThemeData = FilledButtonThemeData(
  style: FilledButton.styleFrom(
    fixedSize: const Size.fromHeight(50),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(8),
    ),
    disabledBackgroundColor: customColorScheme.onSurface4,
    disabledForegroundColor: Colors.white,
    textStyle: const TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w500,
      fontFamily: 'Pretendard',
    ),
  ),
);

OutlinedButtonThemeData outlinedButtonThemeData = OutlinedButtonThemeData(
  style: OutlinedButton.styleFrom(
    fixedSize: const Size.fromHeight(50),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(8),
    ),
    disabledBackgroundColor: customColorScheme.onSurface4,
    disabledForegroundColor: customColorScheme.onSurface3,
    backgroundColor: Colors.white,
    textStyle: const TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w500,
      fontFamily: 'Pretendard',
    ),
  ),
);

TextButtonThemeData textButtonThemeData = TextButtonThemeData(
  style: OutlinedButton.styleFrom(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(8),
    ),
    disabledForegroundColor: customColorScheme.onSurface3,
    textStyle: const TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w500,
      fontFamily: 'Pretendard',
    ),
  ),
);
