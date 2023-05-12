import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:pokerspot_partner_app/common/routes/custom_route/custom_route.dart';
import 'package:pokerspot_partner_app/ui/intro/views/intro.dart';
import 'package:pokerspot_partner_app/ui/splash/views/splash_view.dart';

enum BaseRoutes {
  splash('/'),
  intro('intro'),
  ;

  const BaseRoutes(this.path);

  final String path;
}

Map<String, Widget Function(BuildContext)> baseNamedRoutes = {
  BaseRoutes.splash.path: (context) => const SplashView(),
  BaseRoutes.intro.path: (context) => const IntroView(),
};

List<RouteBase> baseRoutes = [
  customGoRoute(BaseRoutes.intro.path, const IntroView()),
];
