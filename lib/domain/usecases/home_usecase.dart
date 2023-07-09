import 'package:pokerspot_partner_app/data/models/partner/partner_store.dart';
import 'package:pokerspot_partner_app/data/models/store/reservations_status_count.dart';
import 'package:pokerspot_partner_app/data/repositories/partner_repository.dart';
import 'package:pokerspot_partner_app/data/repositories/store_repository.dart';

class HomeUsecase {
  final PartnerRepository _partnerRepository;
  final StoreRepository _storeRepository;

  HomeUsecase(this._partnerRepository, this._storeRepository);

  Future<List<PartnerStoreModel>> getStores() async {
    return await _partnerRepository.getStores();
  }

  Future<ReservationsStatusCountModel?> getReservationsStatusCount(
      String id) async {
    return await _storeRepository
        .getReservationsStatusCount(id)
        .then((value) => value.fold((l) => null, (r) => r));
  }
}
