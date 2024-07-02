import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:loader_overlay/loader_overlay.dart';
import 'package:pokerspot_partner_app/apps/global/global.dart';

import 'firebase_options.dart';
import 'package:timeago/timeago.dart' as timeago;

void main() async {
  timeago.setLocaleMessages('ko', timeago.KoMessages());
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  FlutterError.onError = FirebaseCrashlytics.instance.recordFlutterFatalError;

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GlobalLoaderOverlay(
      child: GestureDetector(
        onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
        child: MaterialApp.router(
          title: '포커스팟 (PokerSpot)',
          theme: _createThemeData(context: context),
          localizationsDelegates: const [
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          routerConfig: router,
        ),
      ),
    );
  }
}

ThemeData _createThemeData({required BuildContext context}) {
  return ThemeData(
    useMaterial3: true,
    colorScheme: ColorScheme.fromSeed(
      seedColor: colorBrand50,
    ),
    appBarTheme: appBarTheme,
    scaffoldBackgroundColor: colorBrand100,
    splashFactory: InkRipple.splashFactory,
    progressIndicatorTheme: const ProgressIndicatorThemeData(
      color: colorGrey80,
    ),
    dividerTheme: const DividerThemeData(
      thickness: 1,
      indent: 1,
      space: 1,
      color: colorGrey95,
    ),
    textTheme: textTheme,
    filledButtonTheme: filledButtonThemeData,
    outlinedButtonTheme: outlinedButtonThemeData,
    textButtonTheme: textButtonThemeData,
    floatingActionButtonTheme: floatingActionButtonThemeData,
    bottomNavigationBarTheme: bottomNavigationBarThemeData,
    dialogTheme: dialogTheme,
    sliderTheme: sliderThemeData,
    bottomSheetTheme: bottomSheetThemeData,
    listTileTheme: listTileThemeData,
    chipTheme: chipThemeData,
    splashColor: colorGrey98,
    dialogBackgroundColor: Colors.white,
    inputDecorationTheme: inputDecorationTheme,
  );
}
