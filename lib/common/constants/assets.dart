enum Assets {
  // Base
  logoFull('assets/logo_full.svg'),
  textLogo('assets/text_logo.svg'),
  poker('assets/poker.svg'),
  slide1('assets/slide1.svg'),
  slide2('assets/slide2.png'),
  slide3('assets/slide3.png'),
  slide4('assets/slide4.png'),

  // Common
  arrowBackDark('assets/arrow_back_dark.svg'),
  arrowBackLight('assets/arrow_back_light.svg'),
  complete('assets/complete.svg'),
  notiLight('assets/noti_light.svg'),
  newIcon('assets/new.png'),
  setting('assets/setting.svg'),

  // BottomNavigation
  homeOn('assets/home_on.svg'),
  homeOff('assets/home_off.svg'),
  statisticsOn('assets/statistics_on.svg'),
  statisticsOff('assets/statistics_off.svg'),
  reservationOn('assets/reservation_on.svg'),
  reservationOff('assets/reservation_off.svg'),
  shopOff('assets/shop_off.svg'),
  shopOn('assets/shop_on.svg'),
  accountOn('assets/account_on.svg'),
  accountOff('assets/account_off.svg'),
  addNewBusiness('assets/add_new_business.svg'),

  // Mypage
  notice('assets/notice.svg'),
  settingNoti('assets/setting_noti.svg'),
  ask('assets/ask.svg'),
  term('assets/term.svg'),
  search('assets/search.svg'),

  // Shop Register
  newAddShop('assets/new_add_shop.svg'),
  shopAdmin('assets/shop_admin.svg'),
  edit('assets/edit.svg'),
  imageUpload('assets/image_upload.png'),
  tonerPubOff('assets/pub_toner_off.svg'),
  tonerPubOn('assets/pub_toner_on.svg'),
  ringPubOff('assets/pub_ring_off.svg'),
  ringPubOn('assets/pub_ring_on.svg'),
  etcPubOff('assets/pub_etc_off.svg'),
  etcPubOn('assets/pub_etc_on.svg'),
  goodPhoto('assets/good_photo.png'),
  padPhoto('assets/bad_photo.png'),
  ;

  const Assets(this.path);

  final String path;
}
