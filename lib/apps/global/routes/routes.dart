import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pokerspot_partner_app/apps/ui/game_create/daily/game_create_daily_page.dart';
import 'package:pokerspot_partner_app/apps/ui/game_create/gtd/game_create_gtd_page.dart';
import 'package:pokerspot_partner_app/apps/ui/game_sort/game_sort_page.dart';
import 'package:pokerspot_partner_app/apps/ui/ui.dart';

enum CustomRouter {
  splash('/splash'),
  intro('/intro'),
  signupIntro('/signup-intro'),
  signin('/signin'),
  signupVerify('/signup-verify'),
  signupInfo('/signup-info'),
  navigation('/navigation'),
  gameCreateDaily('/game-create-daily'),
  gameCreateGtd('/game-create-gtd'),
  gameSort('/game-sort'),
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
      path: CustomRouter.signin.path,
      builder: (context, state) => const SigninPage(),
    ),
    GoRoute(
      path: CustomRouter.signupIntro.path,
      builder: (context, state) => const SignupIntroPage(),
    ),
    GoRoute(
      path: CustomRouter.signupInfo.path,
      builder: (context, state) => const SignupInfoPage(),
    ),
    GoRoute(
      path: CustomRouter.navigation.path,
      builder: (context, state) => const NavigationPage(),
    ),
    GoRoute(
      path: CustomRouter.gameCreateDaily.path,
      builder: (context, state) => const GameCreateDailyPage(),
    ),
    GoRoute(
      path: CustomRouter.gameCreateGtd.path,
      builder: (context, state) => const GameCreateGTDPage(),
    ),
    GoRoute(
      path: CustomRouter.gameSort.path,
      builder: (context, state) => const GameSortPage(),
    ),
  ],
);
