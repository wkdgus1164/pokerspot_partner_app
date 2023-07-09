import 'package:flutter/foundation.dart';
import 'package:pokerspot_partner_app/data/models/store/reservations_status_count.dart';
import 'package:pokerspot_partner_app/domain/usecases/home_usecase.dart';

import '../../data/models/partner/partner_store.dart';

class HomeProvider with ChangeNotifier {
  final HomeUsecase _usecase;

  ReservationsStatusCountModel? _reservationsStatusCount;
  ReservationsStatusCountModel? get reservationsStatusCount =>
      _reservationsStatusCount;

  List<PartnerStoreModel>? _store;
  List<PartnerStoreModel>? get stores => _store;

  HomeProvider(this._usecase) {
    getStores();
    getStores();
  }

  Future<void> getReservationsStatusCount() async {
    _reservationsStatusCount = await _usecase.getReservationsStatusCount();
    notifyListeners();
  }

  Future<void> getStores() async {
    _store = await _usecase.getStores();
    notifyListeners();
  }
}
