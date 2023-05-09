import 'package:flutter/material.dart';
import 'package:pokerspot_partner_app/common/constants/sizes.dart';

ElevatedButtonThemeData elevatedButtonThemeData = ElevatedButtonThemeData(
  style: ElevatedButton.styleFrom(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(defaultRadius),
    ),
  ),
);

TextButtonThemeData textButtonThemeData = TextButtonThemeData(
  style: ElevatedButton.styleFrom(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(defaultRadius),
      side: BorderSide(color: Colors.grey.shade300),
    ),
  ),
);
