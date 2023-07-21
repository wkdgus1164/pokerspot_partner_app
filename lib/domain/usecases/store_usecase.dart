import 'package:pokerspot_partner_app/data/models/partner/partner_store_detail.dart';
import 'package:pokerspot_partner_app/data/repositories/store_repository.dart';

class StoreUsecase {
  final StoreRepository _repository;

  StoreUsecase(this._repository);

  Future<PartnerStoreDetailModel?> getStore(String id) async {
    return _repository.getStore(id);
  }

  Future<bool> updateStore(PartnerStoreDetailModel model) async {
    return _repository.updateStore(model);
  }

  Future<bool> applyAffiliate(
      {required String storeId, required String affiliateId}) async {
    return _repository.applyAffiliate(
        storeId: storeId, affiliateId: affiliateId);
  }

  Future<bool> getAffiliate(String id) async {
    return _repository.getAffiliate(id);
  }

  Future<String?> getAffiliates() async {
    return _repository.getAffiliates();
  }

  Future<bool> pause(String id) async {
    return _repository.pause(id);
  }

  Future<bool> unPause(String id) async {
    return _repository.unPause(id);
  }
}
