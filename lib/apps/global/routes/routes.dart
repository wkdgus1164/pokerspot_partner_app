import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pokerspot_partner_app/apps/ui/intro/intro_page.dart';
import 'package:pokerspot_partner_app/apps/ui/signup_intro/signup_intro_page.dart';
import 'package:pokerspot_partner_app/apps/ui/splash/splash_page.dart';

enum CustomRouter {
  splash('/splash'),
  intro('/intro'),
  signupIntro('/signup-intro'),
  ;

  const CustomRouter(this.path);
  final String path;
}

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

final FirebaseAnalytics analytics = FirebaseAnalytics.instance;

final router = GoRouter(
  navigatorKey: navigatorKey,
  initialLocation: CustomRouter.splash.path,
  onException: (context, state, router) => router.go(
    CustomRouter.splash.path,
  ),
  routes: [
    GoRoute(
      path: CustomRouter.splash.path,
      builder: (context, state) => const SplashPage(),
    ),
    GoRoute(
      path: CustomRouter.intro.path,
      builder: (context, state) => const IntroPage(),
    ),
    GoRoute(
      path: CustomRouter.signupIntro.path,
      builder: (context, state) => const SignupIntroPage(),
    ),
  ],
);
