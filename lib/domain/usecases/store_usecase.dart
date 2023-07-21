import 'package:pokerspot_partner_app/data/repositories/store_repository.dart';

import '../../data/models/partner/partner_store.dart';

class StoreUsecase {
  final StoreRepository _repository;

  StoreUsecase(this._repository);

  Future<bool> updateStore(PartnerStoreModel model) async {
    return _repository.updateStore(model);
  }

  Future<bool> applyAffiliate(
      {required String storeId, required String affiliateId}) async {
    return _repository.applyAffiliate(
        storeId: storeId, affiliateId: affiliateId);
  }

  Future<bool> getAffiliate(PartnerStoreModel model) async {
    return _repository.getAffiliate(model);
  }

  Future<bool> pause(String id) async {
    return _repository.pause(id);
  }

  Future<bool> unPause(String id) async {
    return _repository.unPause(id);
  }
}
