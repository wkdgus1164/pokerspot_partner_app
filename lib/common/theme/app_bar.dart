import 'package:flutter/material.dart';
import 'package:pokerspot_partner_app/common/theme/color.dart';

AppBarTheme appBarTheme = AppBarTheme(
  backgroundColor: customColorScheme.surfaceContainer1,
  centerTitle: true,
  actionsIconTheme: const IconThemeData(color: Colors.white),
  iconTheme: const IconThemeData(color: Colors.white),
  titleTextStyle: TextStyle(
    fontSize: 16,
    color: lightColorScheme.surface,
    fontWeight: FontWeight.bold,
  ),
);
