import 'package:pokerspot_partner_app/data/models/store/store.dart';
import 'package:pokerspot_partner_app/data/repositories/partner_repository.dart';

class HomeUsecase {
  final PartnerRepository _repository;

  HomeUsecase(this._repository);

  Future<List<StoreModel>> getStores() async {
    return await _repository.getStores();
  }
}
