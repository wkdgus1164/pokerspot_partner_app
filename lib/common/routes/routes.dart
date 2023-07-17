import 'package:go_router/go_router.dart';
import 'package:pokerspot_partner_app/common/routes/router_animations.dart';
import 'package:pokerspot_partner_app/data/models/store/store_coupon.dart';
import 'package:pokerspot_partner_app/presentation/views/intro/views/intro.dart';
import 'package:pokerspot_partner_app/presentation/views/intro/views/splash_view.dart';
import 'package:pokerspot_partner_app/presentation/views/member/find/category/views/category_view.dart';
import 'package:pokerspot_partner_app/presentation/views/member/find/id/views/id_find_success_view.dart';
import 'package:pokerspot_partner_app/presentation/views/member/find/id/views/id_find_view.dart';
import 'package:pokerspot_partner_app/presentation/views/member/find/password/views/pw_find_success_view.dart';
import 'package:pokerspot_partner_app/presentation/views/member/find/password/views/pw_find_view.dart';
import 'package:pokerspot_partner_app/presentation/views/member/login/views/login_view.dart';
import 'package:pokerspot_partner_app/presentation/views/member/signup/agreement/views/agreement_view.dart';
import 'package:pokerspot_partner_app/presentation/views/member/signup/information/views/certification_view.dart';
import 'package:pokerspot_partner_app/presentation/views/member/signup/signup/views/signup_information_view.dart';
import 'package:pokerspot_partner_app/presentation/views/member/signup/success/views/success_view.dart';
import 'package:pokerspot_partner_app/presentation/views/sections/bottom_navigation/bottom_navigation.dart';
import 'package:pokerspot_partner_app/presentation/views/sections/home/coupon_admin/views/coupon_admin.dart';
import 'package:pokerspot_partner_app/presentation/views/sections/home/notification/views/notification_view.dart';
import 'package:pokerspot_partner_app/presentation/views/sections/home/tournament_admin/views/tournament_admin_view.dart';
import 'package:pokerspot_partner_app/presentation/views/sections/mypage/views/mypage_admin/mypage_admin_view.dart';
import 'package:pokerspot_partner_app/presentation/views/sections/mypage/views/notice/notice_view.dart';
import 'package:pokerspot_partner_app/presentation/views/sections/mypage/views/term/privacy_policy.dart';
import 'package:pokerspot_partner_app/presentation/views/sections/mypage/views/term/term.dart';
import 'package:pokerspot_partner_app/presentation/views/sections/partnership/main/views/main_view.dart';
import 'package:pokerspot_partner_app/presentation/views/sections/partnership/register/views/register_view.dart';
import 'package:pokerspot_partner_app/presentation/views/sections/partnership/success/views/success_view.dart';
import 'package:pokerspot_partner_app/presentation/views/sections/shop/new/guide/views/guide_tab_view.dart';
import 'package:pokerspot_partner_app/presentation/views/sections/shop/new/intro/views/intro_view.dart';
import 'package:pokerspot_partner_app/presentation/views/sections/shop/new/process/business/views/business_view.dart';
import 'package:pokerspot_partner_app/presentation/views/sections/shop/new/process/essential/views/essential_view.dart';
import 'package:pokerspot_partner_app/presentation/views/sections/shop/new/process/game/views/game_view.dart';
import 'package:pokerspot_partner_app/presentation/views/sections/shop/new/process/image_upload/views/image_upload_view.dart';
import 'package:pokerspot_partner_app/presentation/views/sections/shop/new/process/operation/views/operation_view.dart';
import 'package:pokerspot_partner_app/presentation/views/sections/shop/new/process/success/views/success_view.dart';
import 'package:pokerspot_partner_app/presentation/views/sections/shop/select/views/select.dart';
import 'package:pokerspot_partner_app/presentation/views/sections/shop_edit/tabs/views/tabs_view.dart';

const String homePrefix = '/home';
const String memberPrefix = '/member';
const String shopPrefix = '/shop';

enum CustomRouter {
  splash(
    '/',
    'splash',
  ),
  intro(
    '/intro',
    'intro',
  ),

  // main
  home(homePrefix, 'home'),
  homeTournaments(
    '$homePrefix/tournaments',
    'home_tournaments',
  ),
  homeNotification(
    '$homePrefix/noti',
    'home_noti',
  ),
  homeCoupon(
    '$homePrefix/coupon',
    'home_coupon',
  ),

  // member
  signup(
    '$memberPrefix/signup',
    'member_signup',
  ),
  signupCertification(
    '$memberPrefix/signup/cert',
    'member_signup_cert',
  ),
  signupAgreement(
    '$memberPrefix/signup/agreement',
    'member_signup_agreement',
  ),
  signupSuccess(
    '$memberPrefix/signup/success',
    'member_signup_success',
  ),
  login(
    '$memberPrefix/login',
    'member_login',
  ),
  findCategory(
    '$memberPrefix/find/category',
    'member_find_category',
  ),
  findId(
    '$memberPrefix/find/id',
    'member_find_id',
  ),
  findIdSuccess(
    '$memberPrefix/find/id/success',
    'member_find_id_success',
  ),
  findPw(
    '$memberPrefix/find/pw',
    'member_find_pw',
  ),
  findPwSuccess(
    '$memberPrefix/find/pw/success',
    'member_find_pw_success',
  ),
  mypageAdmin(
    '$memberPrefix/mypage/admin',
    'member_mypage_admin',
  ),
  term(
    '$memberPrefix/mypage/term',
    'member_mypage_term',
  ),
  privacy(
    '$memberPrefix/mypage/privacy',
    'member_mypage_privacy',
  ),
  notice(
    '$memberPrefix/mypage/notice',
    'member_mypage_notice',
  ),

  // shop
  shopNewIntro(
    '$shopPrefix/new/intro',
    'shop_new_intro',
  ),
  shopNewGuide(
    '$shopPrefix/new/guide',
    'shop_new_guide',
  ),

  shopProcessBusiness(
    '$shopPrefix/process/business',
    'shop_process_business',
  ),
  shopProcessEssential(
    '$shopPrefix/process/essential',
    'shop_process_essential',
  ),
  shopProcessImageUpload(
    '$shopPrefix/process/image_upload',
    'shop_process_image_upload',
  ),
  shopProcessOperation(
    '$shopPrefix/process/operation',
    'shop_process_operation',
  ),
  shopProcessGame(
    '$shopPrefix/process/game',
    'shop_process_game',
  ),
  shopProcessSuccess(
    '$shopPrefix/process/success',
    'shop_process_success',
  ),

  shopSelect(
    '$shopPrefix/select',
    'shop_select',
  ),
  shopEdit(
    '$shopPrefix/edit',
    'shop_edit',
  ),

  partnership(
    '$shopPrefix/partnership',
    'shop_partnership',
  ),
  partnershipRegister(
    '$shopPrefix/partnership/register',
    'shop_partnership_register',
  ),
  partnershipPay(
    '$shopPrefix/partnership/pay',
    'shop_partnership_pay',
  ),
  partnershipSuccess(
    '$shopPrefix/partnership/success',
    'shop_partnership_success',
  ),
  ;

  const CustomRouter(this.path, this.name);

  final String path;
  final String name;
}

final GoRouter router = GoRouter(
  routes: [
    GoRoute(
      path: CustomRouter.splash.path,
      builder: (context, state) => const SplashView(),
    ),
    GoRoute(
      path: CustomRouter.intro.path,
      pageBuilder: (context, state) {
        return animateHorizontal(context, state, const IntroView());
      },
    ),

    // main
    GoRoute(
      path: CustomRouter.home.path,
      pageBuilder: (context, state) {
        return animateHorizontal(context, state, const BottomNavigation());
      },
    ),
    GoRoute(
      path: CustomRouter.homeTournaments.path,
      pageBuilder: (context, state) {
        return animateHorizontal(context, state, const TournamentAdminView());
      },
    ),
    GoRoute(
      path: CustomRouter.homeNotification.path,
      pageBuilder: (context, state) {
        return animateHorizontal(context, state, const NotificationView());
      },
    ),
    GoRoute(
      path: CustomRouter.homeCoupon.path,
      pageBuilder: (context, state) {
        return animateHorizontal(
          context,
          state,
          CouponAdminView(
            coupon: StoreCouponModel(
              uid: '123',
              image: 'https://via.placeholder.com/100x100',
              title: '쿠폰 이름',
              subtitle: '쿠폰 설명',
              totalAmount: 10,
              usedAmount: 5,
              remainAmount: 5,
            ),
          ),
        );
      },
    ),

    // member
    GoRoute(
      path: CustomRouter.signup.path,
      pageBuilder: (context, state) {
        return animateHorizontal(context, state, const SignupInformationView());
      },
    ),
    GoRoute(
      path: CustomRouter.signupCertification.path,
      pageBuilder: (context, state) {
        return animateHorizontal(context, state, const CertificationView());
      },
    ),
    GoRoute(
      path: CustomRouter.signupAgreement.path,
      pageBuilder: (context, state) {
        return animateHorizontal(context, state, const SignupAgreementView());
      },
    ),
    GoRoute(
      path: CustomRouter.signupSuccess.path,
      pageBuilder: (context, state) {
        return animateHorizontal(context, state, const SignupSuccessView());
      },
    ),
    GoRoute(
      path: CustomRouter.login.path,
      pageBuilder: (context, state) {
        return animateHorizontal(context, state, const LoginView());
      },
    ),
    GoRoute(
      path: CustomRouter.findCategory.path,
      pageBuilder: (context, state) {
        return animateHorizontal(context, state, const FindCategoryView());
      },
    ),
    GoRoute(
      path: CustomRouter.findId.path,
      pageBuilder: (context, state) {
        return animateHorizontal(context, state, const IdFindView());
      },
    ),
    GoRoute(
      path: CustomRouter.findIdSuccess.path,
      pageBuilder: (context, state) {
        return animateHorizontal(context, state, const IdFindSuccessView());
      },
    ),
    GoRoute(
      path: CustomRouter.findPw.path,
      pageBuilder: (context, state) {
        return animateHorizontal(context, state, const PwFindView());
      },
    ),
    GoRoute(
      path: CustomRouter.findPwSuccess.path,
      pageBuilder: (context, state) {
        return animateHorizontal(context, state, const PwFindSuccessView());
      },
    ),
    GoRoute(
      path: CustomRouter.mypageAdmin.path,
      pageBuilder: (context, state) {
        return animateHorizontal(context, state, const MypageAdminView());
      },
    ),
    GoRoute(
      path: CustomRouter.term.path,
      pageBuilder: (context, state) {
        return animateHorizontal(context, state, const TermView());
      },
    ),
    GoRoute(
      path: CustomRouter.privacy.path,
      pageBuilder: (context, state) {
        return animateHorizontal(context, state, const PrivacyPolicyView());
      },
    ),
    GoRoute(
      path: CustomRouter.notice.path,
      pageBuilder: (context, state) {
        return animateHorizontal(context, state, const NoticeView());
      },
    ),

    // shop
    GoRoute(
      path: CustomRouter.shopNewIntro.path,
      pageBuilder: (context, state) {
        return animateHorizontal(context, state, const ShopNewIntroView());
      },
    ),
    GoRoute(
      path: CustomRouter.shopNewGuide.path,
      pageBuilder: (context, state) {
        return animateHorizontal(context, state, const ShopNewGuideTabView());
      },
    ),
    GoRoute(
      path: CustomRouter.shopProcessBusiness.path,
      pageBuilder: (context, state) {
        return animateHorizontal(context, state, ShopProcessBusinessView());
      },
    ),
    GoRoute(
      path: CustomRouter.shopProcessEssential.path,
      pageBuilder: (context, state) {
        return animateHorizontal(context, state, ShopProcessEssentialView());
      },
    ),
    GoRoute(
      path: CustomRouter.shopProcessImageUpload.path,
      pageBuilder: (context, state) {
        return animateHorizontal(
            context, state, const ShopProcessImageUploadView());
      },
    ),
    GoRoute(
      path: CustomRouter.shopProcessOperation.path,
      pageBuilder: (context, state) {
        return animateHorizontal(
            context, state, const ShopProcessOperationView());
      },
    ),
    GoRoute(
      path: CustomRouter.shopProcessGame.path,
      pageBuilder: (context, state) {
        return animateHorizontal(context, state, const ShopProcessGameView());
      },
    ),
    GoRoute(
      path: CustomRouter.shopProcessSuccess.path,
      pageBuilder: (context, state) {
        return animateHorizontal(
            context, state, const ShopProcessSuccessView());
      },
    ),
    GoRoute(
      path: CustomRouter.shopSelect.path,
      pageBuilder: (context, state) {
        return animateHorizontal(context, state, const StoreSelectView());
      },
    ),
    GoRoute(
      path: CustomRouter.shopEdit.path,
      pageBuilder: (context, state) {
        return animateHorizontal(context, state, const ShopEditTabsView());
      },
    ),
    GoRoute(
      path: CustomRouter.partnership.path,
      pageBuilder: (context, state) {
        return animateHorizontal(context, state, const PartnershipMainView());
      },
    ),
    GoRoute(
      path: CustomRouter.partnershipRegister.path,
      pageBuilder: (context, state) {
        return animateHorizontal(context, state, const PartnerRegisterView());
      },
    ),
    GoRoute(
      path: CustomRouter.partnershipPay.path,
      pageBuilder: (context, state) {
        return animateHorizontal(context, state, const ShopEditTabsView());
      },
    ),
    GoRoute(
      path: CustomRouter.partnershipSuccess.path,
      pageBuilder: (context, state) {
        return animateHorizontal(
            context, state, const PartnershipSuccessView());
      },
    ),
  ],
);
