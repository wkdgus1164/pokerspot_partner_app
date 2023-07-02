import 'package:go_router/go_router.dart';
import 'package:pokerspot_partner_app/common/routes/custom_route/bottom_to_top.dart';
import 'package:pokerspot_partner_app/presentation/views/sections/home/tournaments/views/tournaments.dart';

const String homePath = 'home';

enum HomeRoutes {
  tournaments('$homePath/tournaments'),
  ;

  const HomeRoutes(this.path);

  final String path;
}

List<RouteBase> homeRoutes = [
  bottomToTop(
    HomeRoutes.tournaments.path,
    const TournamentsView(),
  ),
];
