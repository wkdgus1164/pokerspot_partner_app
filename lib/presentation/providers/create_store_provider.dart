import 'package:flutter/foundation.dart';
import 'package:pokerspot_partner_app/data/models/store/create_store_request.dart';
import 'package:pokerspot_partner_app/domain/usecases/create_store_usecase.dart';

class CreateStoreProvider with ChangeNotifier {
  final CreateStoreUsecase _usecase;

  CreateStoreModel _store = CreateStoreModel();
  CreateStoreModel get store => _store;

  bool _checkedBiz = false;
  bool get checkedBiz => _checkedBiz;

  CreateStoreProvider(this._usecase);

  Future<String?> bizValidate() async {
    final error = await _usecase.bizValidate(store);
    _checkedBiz = error == null;
    notifyListeners();
    return error;
  }

  void setStore(CreateStoreModel model, {bool notify = false}) {
    _store = model;
    if (notify) {
      notifyListeners();
    }
  }

  bool validateEssential() {
    return ![
      store.name,
      store.address,
      store.addressDetail,
      store.bizCategory,
      store.bizCategoryDetail,
    ].any((element) => element.isEmpty);
  }
}
