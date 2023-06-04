import 'package:flutter/foundation.dart';
import 'package:pokerspot_partner_app/data/utils/logger.dart';

class TokenProvider with ChangeNotifier {
  String _token = '';
  String get token => _token;

  void setToken(String token) {
    _token = token;
    Logger.d('setToken $token');
    notifyListeners();
  }
}
