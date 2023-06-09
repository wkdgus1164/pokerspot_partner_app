import 'package:flutter/foundation.dart';

class Constants {
  Constants._privateConstructor();

  static final Constants _instance = Constants._privateConstructor();

  factory Constants() {
    return _instance;
  }

  static const apiUrl = kDebugMode
      ? 'https://test-partners-api.pokerspotground.com/v1'
      : 'https://partners-api.pokerspotground.com/v1';
}
