import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:pokerspot_partner_app/common/routes/routes.dart';
import 'package:pokerspot_partner_app/common/theme/bottom_navigation_bar.dart';
import 'package:pokerspot_partner_app/common/theme/button.dart';
import 'package:pokerspot_partner_app/common/theme/checkbox.dart';
import 'package:pokerspot_partner_app/common/theme/color.dart';
import 'package:pokerspot_partner_app/presentation/providers/auth_provider.dart';
import 'package:pokerspot_partner_app/presentation/providers/create_store_provider.dart';
import 'package:pokerspot_partner_app/presentation/providers/home_provider.dart';
import 'package:provider/provider.dart';

import 'data/network/api_client.dart';
import 'locator.dart';
import 'presentation/providers/token_provider.dart';

const storage = FlutterSecureStorage();

ThemeData _createThemeData({required BuildContext context}) {
  return ThemeData(
    useMaterial3: true,
    colorScheme: lightColorScheme,
    checkboxTheme: checkboxTheme,
    filledButtonTheme: filledButtonThemeData,
    outlinedButtonTheme: outlinedButtonThemeData,
    scaffoldBackgroundColor: lightColorScheme.surface,
    bottomNavigationBarTheme: bottomNavigationBarThemeData,
    textTheme: Theme.of(context).textTheme.apply(),
    splashFactory: InkRipple.splashFactory,
  );
}

void main() {
  setupLocator();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark,
      ),
    );

    MaterialApp materialApp() {
      return MaterialApp.router(
        routeInformationProvider: router.routeInformationProvider,
        routeInformationParser: router.routeInformationParser,
        routerDelegate: router.routerDelegate,
        theme: _createThemeData(context: context),
      );
    }

    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (_) => locator<TokenProvider>(),
          ),
          ChangeNotifierProvider(
            create: (_) => locator<AuthProvider>(),
          ),
          ChangeNotifierProvider(
            create: (_) => locator<DioClient>(),
          ),
          ChangeNotifierProvider(
            create: (_) => locator<CreateStoreProvider>(),
          ),
          ChangeNotifierProvider(
            create: (_) => locator<HomeProvider>(),
          ),
        ],
        child: materialApp(),
      ),
    );
  }
}
