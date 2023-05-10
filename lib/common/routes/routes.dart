import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pokerspot_partner_app/ui/intro/views/intro.dart';
import 'package:pokerspot_partner_app/ui/splash/views/splash_view.dart';

enum Routes {
  splash('/'),

  introFirst('/intro_first'),
  ;

  const Routes(this.path);
  final String path;
}

Map<String, Widget Function(BuildContext)> namedRoutes = {
  Routes.splash.path: (context) => const SplashView(),
  Routes.introFirst.path: (context) => const IntroFirstView(),
};

final GoRouter router = GoRouter(
  initialLocation: Routes.splash.path,
  routes: [
    GoRoute(
      path: Routes.splash.path,
      builder: (context, state) => const SplashView(),
    ),
    GoRoute(
      path: Routes.introFirst.path,
      builder: (context, state) => const IntroFirstView(),
    ),
  ],
);
