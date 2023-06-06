import 'package:flutter/foundation.dart';
import 'package:pokerspot_partner_app/data/utils/logger.dart';
import 'package:pokerspot_partner_app/domain/usecases/home_usecase.dart';

import '../../data/models/partner/partner_store.dart';

class HomeProvider with ChangeNotifier {
  final HomeUsecase _usecase;

  List<PartnerStoreModel>? _store;
  List<PartnerStoreModel>? get stores => _store;

  HomeProvider(this._usecase) {
    getStores();
  }

  Future<void> getStores() async {
    _store = await _usecase.getStores();
    Logger.d('getStores $hashCode ${stores?.length}');
    notifyListeners();
  }
}
