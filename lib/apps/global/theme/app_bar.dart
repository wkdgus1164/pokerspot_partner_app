import 'package:flutter/material.dart';
import 'package:pokerspot_partner_app/apps/global/theme/color_scheme.dart';

AppBarTheme appBarTheme = const AppBarTheme(
  surfaceTintColor: Colors.white,
  backgroundColor: Colors.white,
  elevation: 0,
  centerTitle: true,
  iconTheme: IconThemeData(color: Colors.black),
  shape: Border(
    bottom: BorderSide(color: colorGrey90),
  ),
  titleTextStyle: TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w700,
    color: colorGrey40,
  ),
);
