import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

ThemeData _createThemeData({required BuildContext context}) {
  return ThemeData(
    useMaterial3: true,
    checkboxTheme: CheckboxThemeData(),
    elevatedButtonTheme: ElevatedButtonThemeData(),
    textButtonTheme: TextButtonThemeData(),
    scaffoldBackgroundColor: Colors.white,
    textTheme: Theme.of(context)
        .textTheme
        .apply(bodyColor: Colors.black, displayColor: Colors.black),
  );
}

void main() {
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

    return GestureDetector(
      child: MaterialApp(
        theme: _createThemeData(context: context),
        supportedLocales: const [Locale('ko', 'KR')],
        home: const Text('hello'),
      ),
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
    );
  }
}
