import 'package:flutter/material.dart';
import 'package:pokerspot_partner_app/apps/global/theme/color_scheme.dart';

FilledButtonThemeData filledButtonThemeData = FilledButtonThemeData(
  style: FilledButton.styleFrom(
    foregroundColor: colorBrand100,
    backgroundColor: colorBrand50,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(12),
    ),
    elevation: 0,
    padding: const EdgeInsets.symmetric(
      vertical: 20,
      horizontal: 20,
    ),
    textStyle: const TextStyle(
      fontWeight: FontWeight.bold,
    ),
  ),
);

OutlinedButtonThemeData outlinedButtonThemeData = OutlinedButtonThemeData(
  style: OutlinedButton.styleFrom(
    side: const BorderSide(color: colorBrand60),
    foregroundColor: colorBrand50,
    backgroundColor: Colors.transparent,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(12),
      side: const BorderSide(color: colorBrand60),
    ),
    elevation: 0,
    padding: const EdgeInsets.symmetric(
      vertical: 20,
      horizontal: 20,
    ),
    textStyle: const TextStyle(
      fontWeight: FontWeight.bold,
    ),
  ),
);

TextButtonThemeData textButtonThemeData = TextButtonThemeData(
  style: OutlinedButton.styleFrom(
    foregroundColor: colorBrand50,
    backgroundColor: Colors.transparent,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(12),
    ),
    elevation: 0,
    padding: const EdgeInsets.symmetric(
      vertical: 20,
      horizontal: 20,
    ),
    textStyle: const TextStyle(
      fontWeight: FontWeight.bold,
    ),
  ),
);
