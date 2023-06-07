import 'package:flutter/foundation.dart';
import 'package:pokerspot_partner_app/data/models/partner/partner.dart';
import 'package:pokerspot_partner_app/data/utils/logger.dart';

import '../../domain/usecases/sign_in_usecase.dart';
import 'token_provider.dart';

class AuthProviderProvider with ChangeNotifier {
  final TokenProvider _tokenProvider;
  final SignInUsecase _usecase;

  String id = '';
  String password = '';

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

  void logout() {
    _tokenProvider.setToken('');
    _partner = null;
    notifyListeners();
  }
}
