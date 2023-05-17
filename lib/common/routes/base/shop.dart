import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:pokerspot_partner_app/common/routes/custom_route/bottom_to_top.dart';
import 'package:pokerspot_partner_app/common/routes/custom_route/right_to_left.dart';
import 'package:pokerspot_partner_app/ui/shop/new/guide/views/guide_tab_view.dart';
import 'package:pokerspot_partner_app/ui/shop/new/intro/views/intro_view.dart';
import 'package:pokerspot_partner_app/ui/shop/new/process/business/views/business_view.dart';
import 'package:pokerspot_partner_app/ui/shop/new/process/essential/views/essential_view.dart';

const String shopPath = 'shop';

enum ShopRoutes {
  newIntro('$shopPath/new/intro'),
  newGuide('$shopPath/new/guide'),

  processBusiness('$shopPath/process/business'),
  processEssential('$shopPath/process/essential'),
  ;

  const ShopRoutes(this.path);

  final String path;
}

Map<String, Widget Function(BuildContext)> shopNamedRoutes = {
  ShopRoutes.newIntro.path: (context) => const ShopNewIntroView(),
  ShopRoutes.newGuide.path: (context) => const ShopNewGuideTabView(),
  ShopRoutes.processBusiness.path: (context) => const ShopProcessBusinessView(),
  ShopRoutes.processEssential.path: (context) =>
      const ShopProcessEssentialView(),
};

List<RouteBase> shopRoutes = [
  rightToLeft(ShopRoutes.newIntro.path, const ShopNewIntroView()),
  bottomToTop(ShopRoutes.newGuide.path, const ShopNewGuideTabView()),
  rightToLeft(ShopRoutes.processBusiness.path, const ShopProcessBusinessView()),
  rightToLeft(
      ShopRoutes.processEssential.path, const ShopProcessEssentialView()),
];
