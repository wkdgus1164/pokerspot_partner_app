import 'package:flutter/material.dart';

// Material Palette 의 ColorScheme 을 정의했습니다.
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
  surface: Colors.white,
  onSurface: Colors.grey,
  outline: borderColor,
);

// 앱 전역적으로 사용되는 컬러입니다.
Color primaryColor = const Color(0xff573dff);
Color errorColor = const Color(0xffdb2828);
Color backgroundColor = const Color(0xfffdfdfd);
Color textColor = const Color(0xff425059);
Color borderColor = const Color.fromRGBO(233, 235, 238, 1);
Color mintColor = const Color.fromRGBO(19, 181, 172, 1);

// 스타일 가이드의 GreyScale Color 가 너무 많아 Variant 5개 항목으로 통합했습니다.
Color greyVariant1 = const Color.fromRGBO(102, 111, 123, 1);
Color greyVariant2 = const Color.fromRGBO(176, 176, 176, 1);
Color greyVariant3 = const Color.fromRGBO(198, 200, 205, 1);
Color greyVariant4 = const Color.fromRGBO(242, 242, 242, 1);
Color greyVariant5 = const Color.fromRGBO(247, 248, 249, 1);
Color greyVariant6 = textColor;
