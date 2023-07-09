import 'package:flutter/foundation.dart';
import 'package:pokerspot_partner_app/data/models/store/create_store_request.dart';
import 'package:pokerspot_partner_app/data/utils/logger.dart';
import 'package:pokerspot_partner_app/domain/usecases/create_store_usecase.dart';

import '../../data/models/store/mtt_game.dart';

class CreateStoreProvider with ChangeNotifier {
  final CreateStoreUsecase _usecase;

  CreateStoreModel _store = CreateStoreModel();
  CreateStoreModel get store => _store;

  List<MttGameModel> _mttGames = [MttGameModel()];
  List<MttGameModel> get mttGames => _mttGames;

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

  Future<String?> createStore() async {
    Logger.d(store.toJson());
    return await _usecase.createStore(CreateStoreRequestModel(
      store: store,
      mttGames: mttGames,
    ));
  }

  Future<String?> storeValidate(String bizNumber) async {
    return await _usecase.storeValidate(bizNumber);
  }

  void addGame() {
    _mttGames.add(MttGameModel());
    notifyListeners();
  }

  void deleteGame(int index) {
    _mttGames.removeAt(index);
    notifyListeners();
  }

  void setGame(
      {required int index, required MttGameModel model, bool notify = true}) {
    _mttGames[index] = model;
    if (notify) {
      notifyListeners();
    }
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

  bool validateGame() {
    Logger.d(store.toJson());
    return !mttGames
        .map((e) =>
            [
              e.targetMttName,
              e.prize,
            ].any((data) => data.isNotEmpty) &&
            (e.entryMax ?? 1000) >= e.entryMin)
        .any((game) => game == false);
  }

  bool validateOperation() {
    Logger.d(store.toJson());
    return store.openTime.isNotEmpty;
  }

  void clear() {
    _store = CreateStoreModel();
    _mttGames = [MttGameModel()];
    _images = List.generate(5, (_) => null);
    _checkedBiz = false;
    notifyListeners();
  }
}
