import 'package:flutter/foundation.dart';
import 'package:pokerspot_partner_app/data/utils/logger.dart';

import '../../main.dart';

class TokenProvider with ChangeNotifier {
  String _token = '';
  String get token => _token;

  bool _isAutoLogin = true;
  bool get isAutoLogin => _isAutoLogin;

  TokenProvider() {
    storage.read(key: 'isAutoLogin').then((value) {
      _isAutoLogin = value == 'true' || value == null;

      if (isAutoLogin) {
        storage.read(key: 'token').then((value) => _token = value ?? '');
      } else {
        setToken('');
      }
    });
  }

  Future<void> setToken(String token) async {
    _token = token;
    await storage.write(key: 'token', value: token);
    Logger.d('[setToken]\n$token');
    notifyListeners();
  }

  Future<void> setIsAutoLogin() async {
    _isAutoLogin = !isAutoLogin;
    await storage.write(key: 'isAutoLogin', value: isAutoLogin.toString());
    notifyListeners();
  }
}
