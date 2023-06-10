import 'package:flutter/material.dart';
import 'package:pokerspot_partner_app/common/theme/color.dart';

BottomNavigationBarThemeData bottomNavigationBarThemeData =
    BottomNavigationBarThemeData(
  backgroundColor: Colors.white,
  selectedItemColor: customColorScheme.onSurface1,
  selectedLabelStyle: TextStyle(
    color: customColorScheme.onSurface1,
    fontSize: 12,
  ),
  unselectedLabelStyle: TextStyle(
    color: customColorScheme.onSurface4,
    fontSize: 12,
  ),
  showUnselectedLabels: true,
  type: BottomNavigationBarType.fixed,
  enableFeedback: true,
);
