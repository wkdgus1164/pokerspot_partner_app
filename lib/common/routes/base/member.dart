import 'package:go_router/go_router.dart';
import 'package:pokerspot_partner_app/common/routes/custom_route/right_to_left.dart';
import 'package:pokerspot_partner_app/presentation/views/main/sections/mypage/views/mypage_admin/mypage_admin_view.dart';
import 'package:pokerspot_partner_app/presentation/views/main/sections/mypage/views/notice/notice_view.dart';
import 'package:pokerspot_partner_app/presentation/views/main/sections/mypage/views/term/privacy_policy.dart';
import 'package:pokerspot_partner_app/presentation/views/main/sections/mypage/views/term/term.dart';
import 'package:pokerspot_partner_app/presentation/views/member/signup/agreement/views/agreement_view.dart';
import 'package:pokerspot_partner_app/presentation/views/member/signup/signup/views/certification_view.dart';

import '../../../presentation/views/member/login/views/login_view.dart';
import '../../../presentation/views/member/signup/signup/views/signup_view.dart';
import '../../../presentation/views/member/signup/success/views/success_view.dart';

const String memberPath = 'member';

enum MemberRoutes {
  signup('$memberPath/signup'),
  signupCertification('$memberPath/certification'),
  signupAgreement('$memberPath/agreement'),
  signupSuccess('$memberPath/success'),
  login('login'),
  mypageAdmin('mypageAdmin'),
  term('term'),
  privacyPolicy('privacyPolicy'),
  notice('notice'),
  ;

  const MemberRoutes(this.path);

  final String path;
}

List<RouteBase> memberRoutes = [
  rightToLeft(
    MemberRoutes.signup.path,
    const SignupView(),
  ),
  rightToLeft(
    MemberRoutes.signupCertification.path,
    const CertificationView(),
  ),
  rightToLeft(
    MemberRoutes.signupAgreement.path,
    const SignupAgreementView(),
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
  rightToLeft(
    MemberRoutes.privacyPolicy.path,
    const PrivacyPolicyView(),
  ),
  rightToLeft(
    MemberRoutes.notice.path,
    const NoticeView(),
  ),
];
