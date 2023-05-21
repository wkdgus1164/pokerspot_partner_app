import 'package:flutter/material.dart';
import 'package:pokerspot_partner_app/common/theme/color.dart';

BottomNavigationBarThemeData bottomNavigationBarThemeData =
    BottomNavigationBarThemeData(
  selectedItemColor: Colors.black,
  selectedLabelStyle: const TextStyle(color: Colors.black, fontSize: 12),
  unselectedItemColor: greyVariant3,
  unselectedLabelStyle: TextStyle(color: greyVariant3, fontSize: 12),
  showUnselectedLabels: true,
  type: BottomNavigationBarType.fixed,
  enableFeedback: true,
);
