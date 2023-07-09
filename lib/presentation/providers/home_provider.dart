import 'package:flutter/foundation.dart';
import 'package:pokerspot_partner_app/data/models/store/reservations_status_count.dart';
import 'package:pokerspot_partner_app/domain/usecases/home_usecase.dart';

import '../../data/models/partner/partner_store.dart';

class HomeProvider with ChangeNotifier {
  final HomeUsecase _usecase;

  List<PartnerStoreModel>? _stores;
  List<PartnerStoreModel>? get stores => _stores;

  PartnerStoreModel? _selectedStore;
  PartnerStoreModel? get selectedStore => _selectedStore;

  ReservationsStatusCountModel? _reservationsStatusCount;
  ReservationsStatusCountModel? get reservationsStatusCount =>
      _reservationsStatusCount;

  HomeProvider(this._usecase) {
    init();
  }

  Future<void> init() async {
    await getStores();
    if (stores?.isNotEmpty == true) {
      _selectedStore = stores?.first;
    }
    getReservationsStatusCount();
  }

  Future<void> getStores() async {
    _stores = await _usecase.getStores();
    notifyListeners();
  }

  Future<void> getReservationsStatusCount() async {
    _reservationsStatusCount = await _usecase.getReservationsStatusCount();
    notifyListeners();
  }
}
