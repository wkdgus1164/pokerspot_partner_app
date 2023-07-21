import 'package:flutter/foundation.dart';
import 'package:pokerspot_partner_app/domain/usecases/store_usecase.dart';

import '../../data/models/partner/partner_store.dart';

class StoreProvider with ChangeNotifier {
  final StoreUsecase _usecase;

  StoreProvider(this._usecase);

  Future<bool> updateStore(PartnerStoreModel model) async {
    return _usecase.updateStore(model);
  }

  Future<bool> applyAffiliate(
      {required String storeId, required String affiliateId}) async {
    return _usecase.applyAffiliate(storeId: storeId, affiliateId: affiliateId);
  }

  Future<bool> getAffiliate(PartnerStoreModel model) async {
    return _usecase.getAffiliate(model);
  }

  Future<bool> pause(String id) async {
    return _usecase.pause(id);
  }

  Future<bool> unPause(String id) async {
    return _usecase.unPause(id);
  }
}
