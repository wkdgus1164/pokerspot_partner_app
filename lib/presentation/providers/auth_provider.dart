import 'package:flutter/foundation.dart';
import 'package:pokerspot_partner_app/data/models/partner/partner.dart';
import 'package:pokerspot_partner_app/data/utils/logger.dart';
import 'package:pokerspot_partner_app/domain/usecases/my_usecase.dart';

import '../../domain/usecases/sign_in_usecase.dart';
import 'token_provider.dart';

class AuthProvider with ChangeNotifier {
  final TokenProvider _tokenProvider;
  final SignInUsecase _signInUsecase;
  final MyUsecase _myUsecase;

  String _id = '';
  String get id => _id;

  String _password = '';
  String get password => _password;

  bool _validate = false;
  bool get validate => _validate;

  PartnerModel? _partner;
  PartnerModel? get partner => _partner;

  AuthProvider(this._tokenProvider, this._signInUsecase, this._myUsecase);

  Future<bool> login({String? token}) async {
    final newToken =
        token ?? await _signInUsecase.signIn(id: id, password: password) ?? '';
    await _tokenProvider.setToken(newToken);
    if (newToken.isNotEmpty) {
      _partner = await _signInUsecase.getPartner();
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

  Future<bool> delete() async {
    return await _myUsecase.deletePartner();
  }

  void validateLogin() {
    _validate = _signInUsecase.validate(id: id, password: password);
    notifyListeners();
  }
}
