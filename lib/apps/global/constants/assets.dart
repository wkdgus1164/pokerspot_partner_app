const String assetPath = 'assets';

enum Assets {
  logoSplash('$assetPath/logo_splash.svg'),
  mockupIntro('$assetPath/mockup_intro.png'),
  verify('$assetPath/verify.json'),
  ;

  const Assets(this.path);
  final String path;
}
