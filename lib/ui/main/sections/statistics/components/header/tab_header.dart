import 'package:flutter/material.dart';
import 'package:pokerspot_partner_app/common/theme/color.dart';
import 'package:pokerspot_partner_app/common/theme/typography.dart';

PreferredSizeWidget statisticsTabAppBar = AppBar(
  centerTitle: true,
  automaticallyImplyLeading: false,
  surfaceTintColor: Colors.white,
  backgroundColor: const Color.fromRGBO(42, 50, 59, 1),
  elevation: 0,
  title: Row(
    mainAxisSize: MainAxisSize.min,
    children: [
      Text('몬스터 홀덤펍', style: bodyMedium.copyWith(color: Colors.white)),
      Icon(Icons.keyboard_arrow_down_rounded, color: greyVariant3),
    ],
  ),
);
