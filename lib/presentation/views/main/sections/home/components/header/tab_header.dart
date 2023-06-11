import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pokerspot_partner_app/presentation/widgets/app_bar/app_bar.dart';
import 'package:pokerspot_partner_app/common/constants/assets.dart';

PreferredSizeWidget homeTabAppBar = CustomAppBar(
  isCenterLogo: true,
  theme: CustomAppBarTheme.dark,
  actions: [
    IconButton(
      icon: SvgPicture.asset(Assets.notiLight.path),
      onPressed: () {
        // handle button press
      },
    ),
  ],
);
