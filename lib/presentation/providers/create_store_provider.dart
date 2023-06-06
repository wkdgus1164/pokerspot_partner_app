import 'package:flutter/foundation.dart';
import 'package:pokerspot_partner_app/data/models/partner/partner_store.dart';
import 'package:pokerspot_partner_app/data/models/store/create_store_request.dart';
import 'package:pokerspot_partner_app/data/utils/logger.dart';
import 'package:pokerspot_partner_app/domain/usecases/create_store_usecase.dart';

class CreateStoreProvider with ChangeNotifier {
  final CreateStoreUsecase _usecase;

  CreateStoreModel _store = CreateStoreModel();
  CreateStoreModel get store => _store;

  final List<StoreImageModel?> _images = List.generate(5, (_) => null);
  List<StoreImageModel?> get images => _images;

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
    Logger.d(store.toJson());
    if (notify) {
      notifyListeners();
    }
  }

  void setImage(int index, String url) {
    _images[index] = StoreImageModel(url: url);
    notifyListeners();
  }

  Future<String?> getImageUrl(List<int> binaryData) async {
    return await _usecase.uploadImage(binaryData);
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

  bool validateImages() {
    final validate = images[0] != null && images[1] != null;
    List<StoreImageModel> models = [];
    for (final image in images) {
      if (image != null) {
        models.add(image);
      }
    }
    if (validate) {
      setStore(store.copyWith(storeImages: models), notify: true);
      return true;
    } else {
      return false;
    }
  }
}
