import 'package:flutter/material.dart';

BoxShadow cardShadow = const BoxShadow(
  color: Color(0x19000000),
  blurRadius: 4,
  offset: Offset(0, 1),
  spreadRadius: 0,
);

BoxShadow toolbarShadow = BoxShadow(
  color: Colors.grey.withOpacity(0.2),
  spreadRadius: 2,
  blurRadius: 4,
  offset: const Offset(0, -1),
);
