import 'package:flutter/material.dart';
import 'package:pokerspot_partner_app/apps/global/theme/color_scheme.dart';

BottomNavigationBarThemeData bottomNavigationBarThemeData =
    const BottomNavigationBarThemeData(
  backgroundColor: Colors.white,
  selectedLabelStyle: TextStyle(
    color: colorGrey20,
    fontSize: 12,
    height: 1.5,
  ),
  unselectedLabelStyle: TextStyle(
    color: colorGrey80,
    fontSize: 12,
    height: 1.5,
  ),
  unselectedItemColor: colorGrey80,
  selectedItemColor: colorGrey20,
  showSelectedLabels: true,
  showUnselectedLabels: true,
  type: BottomNavigationBarType.fixed,
);
