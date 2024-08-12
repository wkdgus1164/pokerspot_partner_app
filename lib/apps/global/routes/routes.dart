import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pokerspot_partner_app/apps/ui/game/create/daily/create_daily_page.dart';
import 'package:pokerspot_partner_app/apps/ui/game/create/gtd/create_gtd_page.dart';
import 'package:pokerspot_partner_app/apps/ui/game/sort/sort_page.dart';
import 'package:pokerspot_partner_app/apps/ui/game/update/daily/update_daily_page.dart';
import 'package:pokerspot_partner_app/apps/ui/my/main/main_page.dart';
import 'package:pokerspot_partner_app/apps/ui/store/biz/biz_page.dart';
import 'package:pokerspot_partner_app/apps/ui/store/biz_edit/biz_edit_page.dart';
import 'package:pokerspot_partner_app/apps/ui/store/images/images_page.dart';
import 'package:pokerspot_partner_app/apps/ui/store/images_edit/image_edit_page.dart';
import 'package:pokerspot_partner_app/apps/ui/store/ment/ment_page.dart';
import 'package:pokerspot_partner_app/apps/ui/store/operation_time/operation_time_page.dart';
import 'package:pokerspot_partner_app/apps/ui/ui.dart';

enum CustomRouter {
  splash('/splash'),
  intro('/intro'),
  signupIntro('/signup-intro'),
  signin('/signin'),
  signupVerify('/signup-verify'),
  signupInfo('/signup-info'),
  navigation('/navigation'),
  gameCreateDaily('/game/create-daily'),
  gameCreateGtd('/game/create-gtd'),
  gameSort('/game/sort'),
  gameUpdateDaily('/game-update-daily'),
  storeBizInfo('/store/biz-info'),
  storeBizInfoEdit('/store/biz-info/edit'),
  storeImages('/store/images'),
  storeImagesEdit('/store/image-edit'),
  storeMent('/store/ment'),
  storeOperationTime('/store/operation-time'),
  myMain('/my/main'),
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
    GoRoute(
      path: CustomRouter.gameUpdateDaily.path,
      builder: (context, state) => const GameUpdateDailyPage(),
    ),
    GoRoute(
      path: CustomRouter.storeBizInfo.path,
      builder: (context, state) => const StoreBizPage(),
    ),
    GoRoute(
      path: CustomRouter.storeBizInfoEdit.path,
      builder: (context, state) => const StoreBizEditPage(),
    ),
    GoRoute(
      path: CustomRouter.storeImages.path,
      builder: (context, state) => const StoreImagesPage(),
    ),
    GoRoute(
      path: CustomRouter.storeImagesEdit.path,
      builder: (context, state) => const StoreImagesEditPage(),
    ),
    GoRoute(
      path: CustomRouter.storeMent.path,
      builder: (context, state) => const StoreMentPage(),
    ),
    GoRoute(
      path: CustomRouter.storeOperationTime.path,
      builder: (context, state) => const StoreOperationTimePage(),
    ),
    GoRoute(
      path: CustomRouter.myMain.path,
      builder: (context, state) => const MyMainPage(),
    ),
  ],
);
