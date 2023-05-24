import 'package:go_router/go_router.dart';
import 'package:pokerspot_partner_app/common/routes/custom_route/right_to_left.dart';
import 'package:pokerspot_partner_app/ui/bottom_navigation/bottom_navigation.dart';

const String navigationPath = 'navigation';

enum BottomNavigationRoutes {
  home('$navigationPath/home'),
  ;

  const BottomNavigationRoutes(this.path);

  final String path;
}

List<RouteBase> bottomNavigationRoutes = [
  rightToLeft(BottomNavigationRoutes.home.path, const BottomNavigation()),
];
