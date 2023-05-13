import 'package:flutter/material.dart';

BottomNavigationBarThemeData bottomNavigationBarThemeData =
    const BottomNavigationBarThemeData(
  selectedItemColor: Colors.black,
  selectedLabelStyle: TextStyle(color: Colors.black, fontSize: 12),
  unselectedItemColor: Color.fromRGBO(198, 200, 205, 1),
  unselectedLabelStyle: TextStyle(
    color: Color.fromRGBO(192, 200, 205, 1),
    fontSize: 12,
  ),
  showUnselectedLabels: true,
  type: BottomNavigationBarType.fixed,
  enableFeedback: true,
);
