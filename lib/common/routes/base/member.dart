import 'package:go_router/go_router.dart';
import 'package:pokerspot_partner_app/common/routes/custom_route/right_to_left.dart';
import 'package:pokerspot_partner_app/ui/member/login/views/login_view.dart';
import 'package:pokerspot_partner_app/ui/member/signup/business/views/business_view.dart';
import 'package:pokerspot_partner_app/ui/member/signup/information/views/information_view.dart';
import 'package:pokerspot_partner_app/ui/member/signup/renew/views/renew_view.dart';
import 'package:pokerspot_partner_app/ui/member/signup/success/views/success_view.dart';

const String memberPath = 'signup';

enum MemberRoutes {
  signupBusiness('$memberPath/business'),
  signupInformation('$memberPath/information'),
  signupRenewal('$memberPath/renewal'),
  signupSuccess('$memberPath/success'),
  login('login'),
  ;

  const MemberRoutes(this.path);

  final String path;
}

List<RouteBase> memberRoutes = [
  rightToLeft(
    MemberRoutes.signupBusiness.path,
    const SignupBusinessView(),
  ),
  rightToLeft(
    MemberRoutes.signupInformation.path,
    const SignupInformationView(),
  ),
  rightToLeft(
    MemberRoutes.signupRenewal.path,
    const SignupRenewView(),
  ),
  rightToLeft(
    MemberRoutes.signupSuccess.path,
    const SignupSuccessView(),
  ),
  rightToLeft(
    MemberRoutes.login.path,
    const LoginView(),
  ),
];
