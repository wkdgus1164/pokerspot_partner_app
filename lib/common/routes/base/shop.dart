import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:pokerspot_partner_app/common/routes/custom_route/bottom_to_top.dart';
import 'package:pokerspot_partner_app/common/routes/custom_route/right_to_left.dart';
import 'package:pokerspot_partner_app/ui/shop/new/guide/views/guide_tab_view.dart';
import 'package:pokerspot_partner_app/ui/shop/new/intro/views/intro_view.dart';

const String shopPath = 'shop';

enum ShopRoutes {
  newIntro('$shopPath/new/intro'),
  newGuide('$shopPath/new/guide'),
  ;

  const ShopRoutes(this.path);

  final String path;
}

Map<String, Widget Function(BuildContext)> shopNamedRoutes = {
  ShopRoutes.newIntro.path: (context) => const ShopNewIntroView(),
  ShopRoutes.newGuide.path: (context) => const ShopNewGuideTabView(),
};

List<RouteBase> shopRoutes = [
  rightToLeft(ShopRoutes.newIntro.path, const ShopNewIntroView()),
  bottomToTop(ShopRoutes.newGuide.path, const ShopNewGuideTabView()),
];
