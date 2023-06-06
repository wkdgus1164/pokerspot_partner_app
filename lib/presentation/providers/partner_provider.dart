import 'package:flutter/foundation.dart';
import 'package:pokerspot_partner_app/data/models/partner/partner.dart';
import 'package:pokerspot_partner_app/data/utils/logger.dart';

import '../../domain/usecases/sign_in_usecase.dart';

class PartnerProvider with ChangeNotifier {
  final SignInUsecase _usecase;

  String id = '';
  String password = '';

  PartnerModel? _partner;
  PartnerModel? get partner => _partner;

  PartnerProvider(this._usecase);

  Future<String> getToken() async {
    String token = await _usecase.signIn(id: id, password: password) ?? '';
    return token;
  }

  Future<bool> getPartner(String token) async {
    if (token.isNotEmpty) {
      _partner = await _usecase.getPartner();
      Logger.d('partner=${_partner?.toJson()}');
    } else {
      _partner = null;
    }
    notifyListeners();
    return partner != null;
  }
}
