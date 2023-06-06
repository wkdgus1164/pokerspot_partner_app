import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:pokerspot_partner_app/common/constants/assets.dart';
import 'package:pokerspot_partner_app/common/routes/base/base.dart';
import 'package:pokerspot_partner_app/common/theme/color.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  late Timer _timer;

  @override
  // ignore: must_call_super
  void initState() {
    _timer = Timer(const Duration(milliseconds: 1500), () {
      super.context.replaceNamed(BaseRoutes.intro.path);
    });
  }

  @override
  void dispose() {
    _timer.cancel();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: Center(child: SvgPicture.asset(Assets.logoFull.path, width: 100)),
    );
  }
}
