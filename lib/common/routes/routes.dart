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
import 'package:pokerspot_partner_app/presentation/views/sections/mypage/views/guest/views/guest_view.dart';
import 'package:pokerspot_partner_app/presentation/views/sections/mypage/views/inquiry/views/inquiry_view.dart';
import 'package:pokerspot_partner_app/presentation/views/sections/mypage/views/inquiry_create/views/inquiry_create_view.dart';
import 'package:pokerspot_partner_app/presentation/views/sections/mypage/views/mypage_admin/mypage_admin_view.dart';
import 'package:pokerspot_partner_app/presentation/views/sections/mypage/views/noti/views/noti_view.dart';
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
  splash('/'),
  intro('/intro'),

  // main
  home(homePrefix),
  homeTournaments('$homePrefix/tournaments'),
  homeNotification('$homePrefix/noti'),
  homeCoupon('$homePrefix/coupon'),

  // member
  signup('$memberPrefix/signup'),
  signupCertification('$memberPrefix/signup/cert'),
  signupAgreement('$memberPrefix/signup/agreement'),
  signupSuccess('$memberPrefix/signup/success'),
  login('$memberPrefix/login'),
  findCategory('$memberPrefix/find/category'),
  findId('$memberPrefix/find/id'),
  findIdSuccess('$memberPrefix/find/id/success'),
  findPw('$memberPrefix/find/pw'),
  findPwSuccess('$memberPrefix/find/pw/success'),

  // mypage
  mypageAdmin('$memberPrefix/mypage/admin'),

  guest('$memberPrefix/mypage/guest'),
  term('$memberPrefix/mypage/term'),
  privacy('$memberPrefix/mypage/privacy'),
  notice('$memberPrefix/mypage/notice'),
  noti('$memberPrefix/mypage/noti'),
  inquiry('$memberPrefix/mypage/inquiry'),
  inquiryCreate('$memberPrefix/mypage/inquiry/create'),

  // shop
  shopNewIntro('$shopPrefix/new/intro'),
  shopNewGuide('$shopPrefix/new/guide'),

  shopProcessBusiness('$shopPrefix/process/business'),
  shopProcessEssential('$shopPrefix/process/essential'),
  shopProcessImageUpload('$shopPrefix/process/image_upload'),
  shopProcessOperation('$shopPrefix/process/operation'),
  shopProcessGame('$shopPrefix/process/game'),
  shopProcessSuccess('$shopPrefix/process/success'),

  shopSelect('$shopPrefix/select'),
  shopEdit('$shopPrefix/edit'),

  partnership('$shopPrefix/partnership'),
  partnershipRegister('$shopPrefix/partnership/register'),
  partnershipPay('$shopPrefix/partnership/pay'),
  partnershipSuccess('$shopPrefix/partnership/success'),
  ;

  const CustomRouter(this.path);

  final String path;
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

    // mypage
    GoRoute(
      path: CustomRouter.mypageAdmin.path,
      pageBuilder: (context, state) {
        return animateHorizontal(context, state, const MypageAdminView());
      },
    ),
    GoRoute(
      path: CustomRouter.guest.path,
      pageBuilder: (context, state) {
        return animateHorizontal(context, state, const GuestView());
      },
    ),
    GoRoute(
      path: CustomRouter.noti.path,
      pageBuilder: (context, state) {
        return animateHorizontal(context, state, const NotiSettingView());
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
    GoRoute(
      path: CustomRouter.inquiry.path,
      pageBuilder: (context, state) {
        return animateHorizontal(context, state, const InquiryView());
      },
    ),
    GoRoute(
      path: CustomRouter.inquiryCreate.path,
      pageBuilder: (context, state) {
        return animateHorizontal(context, state, const InquiryCreateView());
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
