import 'package:flutter/foundation.dart';
import 'package:pokerspot_partner_app/data/models/store/create_store_request.dart';
import 'package:pokerspot_partner_app/data/utils/logger.dart';
import 'package:pokerspot_partner_app/domain/usecases/create_store_usecase.dart';

class CreateStoreProvider with ChangeNotifier {
  final CreateStoreUsecase _usecase;

  CreateStoreModel _store = CreateStoreModel();
  CreateStoreModel get store => _store;

  List<MttGameModel> _mttGames = [];
  List<MttGameModel> get mttGames => _mttGames;

  List<EtcGameModel> _etcGames = [];
  List<EtcGameModel> get etcGames => _etcGames;

  List<CreateStoreImageModel?> _images = List.generate(5, (_) => null);
  List<CreateStoreImageModel?> get images => _images;

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

  void setImage(int index, String url) {
    _images[index] = CreateStoreImageModel(url: url, priority: index);
    notifyListeners();
  }

  Future<String?> getImageUrl(List<int> binaryData) async {
    return await _usecase.uploadImage(binaryData);
  }

  Future<bool> createStore() async {
    Logger.d(store.toJson());
    return await _usecase.createStore(CreateStoreRequestModel(
      store: store,
      mttGames: mttGames,
      etcGames: etcGames,
    ));
  }

  bool validateEssential() {
    Logger.d(store.toJson());
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
    List<CreateStoreImageModel> models = [];
    for (final image in images) {
      if (image != null) {
        models.add(image);
      }
    }
    Logger.d(store.toJson());
    if (validate) {
      setStore(store.copyWith(storeImages: models), notify: true);
      return true;
    } else {
      return false;
    }
  }

  bool validateOperation() {
    Logger.d(store.toJson());
    return store.openTime.isNotEmpty;
  }

  void clear() {
    _store = CreateStoreModel();
    _mttGames.clear();
    _etcGames.clear();
    _images = List.generate(5, (_) => null);
    _checkedBiz = false;
    notifyListeners();
  }
}
