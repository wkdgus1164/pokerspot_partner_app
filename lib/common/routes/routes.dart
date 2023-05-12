import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pokerspot_partner_app/ui/intro/views/intro.dart';
import 'package:pokerspot_partner_app/ui/signup/business/views/business_view.dart';
import 'package:pokerspot_partner_app/ui/splash/views/splash_view.dart';

enum Routes {
  splash('/'),
  intro('intro'),
  signupBusiness('signup_business'),
  ;

  const Routes(this.path);

  final String path;
}

Map<String, Widget Function(BuildContext)> namedRoutes = {
  Routes.splash.path: (context) => const SplashView(),
  Routes.intro.path: (context) => const IntroView(),
  Routes.signupBusiness.path: (context) => const SignupBusinessView(),
};

final GoRouter router = GoRouter(
  initialLocation: Routes.splash.path,
  routes: [
    GoRoute(
      path: Routes.splash.path,
      builder: (context, state) => const SplashView(),
      routes: [
        GoRoute(
          name: Routes.intro.path,
          path: Routes.intro.path,
          pageBuilder: (context, state) {
            return CustomTransitionPage(
              child: const IntroView(),
              transitionsBuilder:
                  (context, animation, secondaryAnimation, child) {
                return SlideTransition(
                  position: animation.drive(
                    Tween<Offset>(
                      begin: const Offset(1, 0),
                      end: Offset.zero,
                    ).chain(
                      CurveTween(
                        curve: Curves.easeInOut,
                      ),
                    ),
                  ),
                  child: child,
                );
              },
            );
          },
        ),
        GoRoute(
          name: Routes.signupBusiness.path,
          path: Routes.signupBusiness.path,
          pageBuilder: (context, state) {
            return CustomTransitionPage(
              child: const SignupBusinessView(),
              transitionsBuilder:
                  (context, animation, secondaryAnimation, child) {
                return SlideTransition(
                  position: animation.drive(
                    Tween<Offset>(
                      begin: const Offset(1, 0),
                      end: Offset.zero,
                    ).chain(
                      CurveTween(
                        curve: Curves.easeInOut,
                      ),
                    ),
                  ),
                  child: child,
                );
              },
            );
          },
        ),
      ],
    ),
  ],
);
