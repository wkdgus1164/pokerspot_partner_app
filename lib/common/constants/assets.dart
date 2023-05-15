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

  // Shop Register
  newAddShop('assets/new_add_shop.svg'),
  ;

  const Assets(this.path);

  final String path;
}
