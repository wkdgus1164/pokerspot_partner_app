import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pokerspot_partner_app/common/components/app_bar/app_bar.dart';
import 'package:pokerspot_partner_app/common/constants/assets.dart';

PreferredSizeWidget homeTabAppBar = CustomAppBar(
  customAppBarRightSide: CustomAppBarRightSide.noti,
  customAppBarCenter: CustomAppBarCenter.logo,
  customAppBarTheme: CustomAppBarTheme.black,
  actions: [
    IconButton(
      icon: SvgPicture.asset(Assets.notiLight.path),
      onPressed: () {
        // handle button press
      },
    ),
  ],
);
