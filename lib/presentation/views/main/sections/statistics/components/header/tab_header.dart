import 'package:flutter/material.dart';
import 'package:pokerspot_partner_app/common/theme/color.dart';
import 'package:pokerspot_partner_app/common/theme/typography.dart';

PreferredSizeWidget statisticsTabAppBar(String? title) => AppBar(
      centerTitle: true,
      automaticallyImplyLeading: false,
      surfaceTintColor: Colors.white,
      backgroundColor: const Color.fromRGBO(42, 50, 59, 1),
      elevation: 0,
      title: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(title ?? '통계', style: bodyMedium.copyWith(color: Colors.white)),
          if (title != null)
            Icon(Icons.keyboard_arrow_down_rounded, color: greyVariant3),
        ],
      ),
    );
