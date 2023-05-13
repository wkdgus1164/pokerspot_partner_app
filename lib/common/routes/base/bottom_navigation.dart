import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:pokerspot_partner_app/common/routes/custom_route/custom_route.dart';
import 'package:pokerspot_partner_app/ui/bottom_navigation/bottom_navigation.dart';

const String navigationPath = 'navigation';

enum BottomNavigationRoutes {
  home('$navigationPath/home'),
  ;

  const BottomNavigationRoutes(this.path);

  final String path;
}

Map<String, Widget Function(BuildContext)> bottomNavigationNamedRoutes = {
  BottomNavigationRoutes.home.path: (context) => const BottomNavigation(),
};

List<RouteBase> bottomNavigationRoutes = [
  customGoRoute(BottomNavigationRoutes.home.path, const BottomNavigation()),
];
