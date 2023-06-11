import 'package:flutter/foundation.dart';
import 'package:pokerspot_partner_app/data/models/partner/partner.dart';
import 'package:pokerspot_partner_app/data/utils/logger.dart';

import '../../domain/usecases/sign_in_usecase.dart';
import 'token_provider.dart';

class AuthProviderProvider with ChangeNotifier {
  final TokenProvider _tokenProvider;
  final SignInUsecase _usecase;

  String _id = '';
  String get id => _id;

  String _password = '';
  String get password => _password;

  bool _validate = false;
  bool get validate => _validate;

  PartnerModel? _partner;
  PartnerModel? get partner => _partner;

  AuthProviderProvider(this._tokenProvider, this._usecase);

  Future<bool> login({String? token}) async {
    final newToken =
        token ?? await _usecase.signIn(id: id, password: password) ?? '';
    await _tokenProvider.setToken(newToken);
    if (newToken.isNotEmpty) {
      _partner = await _usecase.getPartner();
      Logger.d('[partner]\n${_partner?.toJson()}');
    } else {
      _partner = null;
    }
    notifyListeners();
    return partner != null;
  }

  void setId(String value) {
    _id = value;
    validateLogin();
  }

  void setPassword(String value) {
    _password = value;
    validateLogin();
  }

  void logout() {
    _tokenProvider.setToken('');
    _id = '';
    _password = '';
    _validate = false;
    _partner = null;
    notifyListeners();
  }

  void validateLogin() {
    _validate = _usecase.validate(id: id, password: password);
    notifyListeners();
  }
}
