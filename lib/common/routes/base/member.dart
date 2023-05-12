import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:pokerspot_partner_app/common/routes/custom_route/custom_route.dart';
import 'package:pokerspot_partner_app/ui/member/signup/business/views/business_view.dart';
import 'package:pokerspot_partner_app/ui/member/signup/information/views/information_view.dart';
import 'package:pokerspot_partner_app/ui/member/signup/success/views/success_view.dart';

const String memberPath = 'signup';

enum MemberRoutes {
  signupBusiness('$memberPath/business'),
  signupInformation('$memberPath/information'),
  signupSuccess('$memberPath/success'),
  ;

  const MemberRoutes(this.path);

  final String path;
}

Map<String, Widget Function(BuildContext)> memberNamedRoutes = {
  MemberRoutes.signupBusiness.path: (context) => const SignupBusinessView(),
  MemberRoutes.signupInformation.path: (context) =>
      const SignupInformationView(),
  MemberRoutes.signupSuccess.path: (context) => const SignupSuccessView(),
};

List<RouteBase> memberRoutes = [
  customGoRoute(
    MemberRoutes.signupBusiness.path,
    const SignupBusinessView(),
  ),
  customGoRoute(
    MemberRoutes.signupInformation.path,
    const SignupInformationView(),
  ),
  customGoRoute(
    MemberRoutes.signupSuccess.path,
    const SignupSuccessView(),
  ),
];
