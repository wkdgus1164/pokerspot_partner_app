import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pokerspot_partner_app/common/routes/base/base.dart';
import 'package:pokerspot_partner_app/common/routes/base/member.dart';
import 'package:pokerspot_partner_app/ui/splash/views/splash_view.dart';

Map<String, Widget Function(BuildContext)> namedRoutes = {
  ...baseNamedRoutes,
  ...memberNamedRoutes,
};

final GoRouter router = GoRouter(
  initialLocation: BaseRoutes.splash.path,
  routes: [
    GoRoute(
      path: BaseRoutes.splash.path,
      builder: (context, state) => const SplashView(),
      routes: [...baseRoutes, ...memberRoutes],
    ),
  ],
);
