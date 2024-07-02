const String assetPath = 'assets';

enum Assets {
  logoSplash('$assetPath/logo_splash.svg'),
  mockupIntro('$assetPath/mockup_intro.png'),
  ;

  const Assets(this.path);
  final String path;
}
