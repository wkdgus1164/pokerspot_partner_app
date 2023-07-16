import 'package:flutter/foundation.dart';
import 'package:pokerspot_partner_app/data/models/store/reservations_status_count.dart';
import 'package:pokerspot_partner_app/data/models/store/store_coupon.dart';
import 'package:pokerspot_partner_app/domain/usecases/home_usecase.dart';

import '../../data/models/partner/partner_store.dart';
import '../../data/models/store/mtt_game.dart';

class HomeProvider with ChangeNotifier {
  final HomeUsecase _usecase;

  List<PartnerStoreModel>? _stores;
  List<PartnerStoreModel>? get stores => _stores;

  PartnerStoreModel? _selectedStore;
  PartnerStoreModel? get selectedStore => _selectedStore;

  ReservationsStatusCountModel? _reservationsStatusCount;
  ReservationsStatusCountModel? get reservationsStatusCount =>
      _reservationsStatusCount;

  List<MttGameModel> _games = [];
  List<MttGameModel> get games => _games;

  List<StoreCouponModel> _coupons = [];
  List<StoreCouponModel> get coupons => _coupons;

  HomeProvider(this._usecase) {
    init();
  }

  Future<void> init() async {
    await getStores();
    if (stores?.isNotEmpty == true) {
      _selectedStore = stores?.first;
    }
    getReservationsStatusCount();
    getGames();
    getCoupons();
  }

  Future<void> getStores() async {
    _stores = await _usecase.getStores();
    notifyListeners();
  }

  Future<void> getReservationsStatusCount() async {
    if (selectedStore != null) {
      _reservationsStatusCount =
          await _usecase.getReservationsStatusCount(selectedStore!.uid);
    }
    notifyListeners();
  }

  Future<void> getGames() async {
    if (selectedStore != null) {
      _games = await _usecase.getGames(selectedStore!.uid);
    }
    notifyListeners();
  }

  Future<void> getCoupons() async {
    if (selectedStore != null) {
      _coupons = await _usecase.getCoupons(selectedStore!.uid);
    }
    notifyListeners();
  }

  Future<bool> updateCoupon(StoreCouponModel data) async {
    if (selectedStore != null) {
      final result = await _usecase.updateCoupon(
          storeId: selectedStore!.uid,
          couponId: data.uid,
          remainAmount: data.remainAmount);
      return result;
    } else {
      return false;
    }
  }
}
