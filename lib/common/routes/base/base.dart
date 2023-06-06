import 'package:go_router/go_router.dart';
import 'package:pokerspot_partner_app/common/routes/custom_route/right_to_left.dart';
import 'package:pokerspot_partner_app/presentation/views/intro/views/intro.dart';

enum BaseRoutes {
  splash('/'),
  intro('intro'),
  ;

  const BaseRoutes(this.path);

  final String path;
}

List<RouteBase> baseRoutes = [
  rightToLeft(BaseRoutes.intro.path, const IntroView()),
];
