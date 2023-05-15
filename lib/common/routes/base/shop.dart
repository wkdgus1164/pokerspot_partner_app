import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:pokerspot_partner_app/common/routes/custom_route/custom_route.dart';
import 'package:pokerspot_partner_app/ui/shop/new/intro/views/intro_view.dart';

const String shopPath = 'shop';

enum ShopRoutes {
  newIntro('$shopPath/new/intro'),
  ;

  const ShopRoutes(this.path);

  final String path;
}

Map<String, Widget Function(BuildContext)> shopNamedRoutes = {
  ShopRoutes.newIntro.path: (context) => const ShopNewIntroView(),
};

List<RouteBase> shopRoutes = [
  customGoRoute(ShopRoutes.newIntro.path, const ShopNewIntroView()),
];
