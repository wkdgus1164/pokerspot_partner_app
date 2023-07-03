import 'package:go_router/go_router.dart';
import 'package:pokerspot_partner_app/common/routes/custom_route/bottom_to_top.dart';
import 'package:pokerspot_partner_app/common/routes/custom_route/right_to_left.dart';
import 'package:pokerspot_partner_app/presentation/views/sections/home/coupon_admin/views/coupon_admin.dart';
import 'package:pokerspot_partner_app/presentation/views/sections/home/notification/views/notification_view.dart';
import 'package:pokerspot_partner_app/presentation/views/sections/home/tournament_admin/views/tournament_admin_view.dart';

const String homePath = 'home';

enum HomeRoutes {
  tournaments('$homePath/tournaments'),
  notifiaction('$homePath/notifiaction'),
  coupon('$homePath/coupon'),
  ;

  const HomeRoutes(this.path);

  final String path;
}

List<RouteBase> homeRoutes = [
  bottomToTop(
    HomeRoutes.tournaments.path,
    const TournamentAdminView(),
  ),
  bottomToTop(
    HomeRoutes.notifiaction.path,
    const NotificationView(),
  ),
  rightToLeft(
    HomeRoutes.coupon.path,
    const CouponAdminView(),
  ),
];
