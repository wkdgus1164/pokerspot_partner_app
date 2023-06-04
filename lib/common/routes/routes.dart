import 'package:go_router/go_router.dart';
import 'package:pokerspot_partner_app/common/routes/base/base.dart';
import 'package:pokerspot_partner_app/common/routes/base/bottom_navigation.dart';
import 'package:pokerspot_partner_app/common/routes/base/member.dart';
import 'package:pokerspot_partner_app/common/routes/base/shop.dart';
import 'package:pokerspot_partner_app/presentation/views/splash/views/splash_view.dart';

final GoRouter router = GoRouter(
  initialLocation: BaseRoutes.splash.path,
  routes: [
    GoRoute(
      path: BaseRoutes.splash.path,
      builder: (context, state) => const SplashView(),
      routes: [
        ...baseRoutes,
        ...memberRoutes,
        ...bottomNavigationRoutes,
        ...shopRoutes,
      ],
    ),
  ],
);
