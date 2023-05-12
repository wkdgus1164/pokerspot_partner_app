import 'package:flutter/material.dart';

ColorScheme colorScheme = ColorScheme(
  brightness: Brightness.light,
  primary: primaryColor,
  onPrimary: Colors.white,
  secondary: Colors.transparent,
  onSecondary: Colors.transparent,
  error: errorColor,
  onError: Colors.white,
  background: backgroundColor,
  onBackground: Colors.black,
  surface: backgroundColor,
  onSurface: Colors.black,
  outline: const Color.fromARGB(255, 233, 235, 238),
);

Color primaryColor = const Color(0xff573dff);
Color errorColor = const Color(0xffdb2828);
Color backgroundColor = const Color(0xfffdfdfd);
Color textColor = const Color(0xff425059);
