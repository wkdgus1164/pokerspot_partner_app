const String assetPath = 'assets';

enum Assets {
  logoSplash('$assetPath/logo_splash.svg'),
  mockupIntro('$assetPath/mockup_intro.png'),
  verify('$assetPath/verify.json'),
  bnStatisticsOn('$assetPath/bn_statistics_on.svg'),
  bnStatisticsOff('$assetPath/bn_statistics_off.svg'),
  bnGameOn('$assetPath/bn_game_on.svg'),
  bnGameOff('$assetPath/bn_game_off.svg'),
  bnStoreOn('$assetPath/bn_store_on.svg'),
  bnStoreOff('$assetPath/bn_store_off.svg'),
  bnMyOn('$assetPath/bn_my_on.svg'),
  bnMyOff('$assetPath/bn_my_off.svg'),
  daily('$assetPath/daily.svg'),
  gtd('$assetPath/gtd.svg'),
  ;

  const Assets(this.path);
  final String path;
}
