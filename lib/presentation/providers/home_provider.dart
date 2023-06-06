import 'package:flutter/foundation.dart';
import 'package:pokerspot_partner_app/domain/usecases/home_usecase.dart';

import '../../data/models/store/store.dart';

class HomeProvider with ChangeNotifier {
  final HomeUsecase _usecase;

  List<StoreModel>? _store;
  List<StoreModel>? get store => _store;

  HomeProvider(this._usecase);

  Future<void> getStores() async {
    _store = await _usecase.getStores();
    notifyListeners();
  }
}
