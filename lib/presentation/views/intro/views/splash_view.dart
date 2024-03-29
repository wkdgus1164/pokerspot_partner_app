import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:pokerspot_partner_app/common/constants/assets.dart';
import 'package:pokerspot_partner_app/common/routes/routes.dart';
import 'package:pokerspot_partner_app/common/theme/color.dart';
import 'package:pokerspot_partner_app/locator.dart';
import 'package:pokerspot_partner_app/presentation/providers/auth_provider.dart';
import 'package:pokerspot_partner_app/presentation/providers/token_provider.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  late Timer _timer;

  @override
  void initState() {
    super.initState();

    _timer = Timer(
      const Duration(milliseconds: 1500),
      () async {
        final token = locator<TokenProvider>().token;
        if (token.isEmpty) {
          context.pushReplacement(CustomRouter.intro.path);
        } else {
          final success = await locator<AuthProvider>().login(token: token);
          if (success && mounted) {
            context.pushReplacement(CustomRouter.home.path);
          } else {
            context.pushReplacement(CustomRouter.intro.path);
          }
        }
      },
    );
  }

  @override
  void dispose() {
    _timer.cancel();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightColorScheme.primary,
      body: Center(
        child: SvgPicture.asset(
          Assets.logoFull.path,
          width: 100,
        ),
      ),
    );
  }
}
