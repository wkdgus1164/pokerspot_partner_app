import 'package:flutter/material.dart';

FilledButtonThemeData filledButtonThemeData = FilledButtonThemeData(
  style: FilledButton.styleFrom(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(12),
    ),
    elevation: 0,
    padding: const EdgeInsets.symmetric(
      vertical: 16,
      horizontal: 20,
    ),
    textStyle: const TextStyle(
      fontWeight: FontWeight.bold,
    ),
  ),
);

OutlinedButtonThemeData outlinedButtonThemeData = OutlinedButtonThemeData(
  style: OutlinedButton.styleFrom(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(12),
    ),
    elevation: 0,
    padding: const EdgeInsets.symmetric(
      vertical: 16,
      horizontal: 20,
    ),
    textStyle: const TextStyle(
      fontWeight: FontWeight.bold,
    ),
  ),
);

TextButtonThemeData textButtonThemeData = TextButtonThemeData(
  style: OutlinedButton.styleFrom(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(12),
    ),
    elevation: 0,
    padding: const EdgeInsets.symmetric(
      vertical: 16,
      horizontal: 20,
    ),
    textStyle: const TextStyle(
      fontWeight: FontWeight.bold,
    ),
  ),
);
