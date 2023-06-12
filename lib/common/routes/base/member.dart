import 'package:go_router/go_router.dart';
import 'package:pokerspot_partner_app/common/routes/custom_route/right_to_left.dart';
import 'package:pokerspot_partner_app/presentation/views/main/sections/mypage/views/mypage_admin/mypage_admin_view.dart';
import 'package:pokerspot_partner_app/presentation/views/main/sections/mypage/views/term/term.dart';
import 'package:pokerspot_partner_app/presentation/views/member/signup/renew/views/certification_view.dart';

import '../../../presentation/views/member/login/views/login_view.dart';
import '../../../presentation/views/member/signup/business/views/business_view.dart';
import '../../../presentation/views/member/signup/information/views/information_view.dart';
import '../../../presentation/views/member/signup/renew/views/renew_view.dart';
import '../../../presentation/views/member/signup/success/views/success_view.dart';

const String memberPath = 'signup';

enum MemberRoutes {
  signupBusiness('$memberPath/business'),
  signupInformation('$memberPath/information'),
  signupRenewal('$memberPath/renewal'),
  signupCertification('$memberPath/certification'),
  signupSuccess('$memberPath/success'),
  login('login'),
  mypageAdmin('mypageAdmin'),
  term('term'),
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
    MemberRoutes.signupCertification.path,
    const CertificationView(),
  ),
  rightToLeft(
    MemberRoutes.signupSuccess.path,
    const SignupSuccessView(),
  ),
  rightToLeft(
    MemberRoutes.login.path,
    const LoginView(),
  ),
  rightToLeft(
    MemberRoutes.mypageAdmin.path,
    const MypageAdminView(),
  ),
  rightToLeft(
    MemberRoutes.term.path,
    const TermView(),
  ),
];
