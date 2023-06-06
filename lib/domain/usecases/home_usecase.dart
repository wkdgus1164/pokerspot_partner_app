import 'package:pokerspot_partner_app/data/models/partner/partner_store.dart';
import 'package:pokerspot_partner_app/data/repositories/partner_repository.dart';

class HomeUsecase {
  final PartnerRepository _repository;

  HomeUsecase(this._repository);

  Future<List<PartnerStoreModel>> getStores() async {
    return await _repository.getStores();
  }
}
