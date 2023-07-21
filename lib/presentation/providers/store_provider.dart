import 'package:flutter/foundation.dart';
import 'package:pokerspot_partner_app/data/models/game/create_game.dart';
import 'package:pokerspot_partner_app/data/models/partner/partner_store_detail.dart';
import 'package:pokerspot_partner_app/domain/usecases/game_usecase.dart';
import 'package:pokerspot_partner_app/domain/usecases/store_usecase.dart';

import '../../data/models/partner/partner_store.dart';
import '../../data/models/store/mtt_game.dart';
import '../../domain/usecases/create_store_usecase.dart';

class StoreProvider with ChangeNotifier {
  final StoreUsecase _storeUsecase;
  final GameUsecase _gameUsecase;
  final CreateStoreUsecase _createUsecase;

  final String _storeId;

  PartnerStoreDetailModel? _store;
  PartnerStoreDetailModel? get store => _store;

  List<MttGameModel> _games = [];
  List<MttGameModel> get games => _games;

  StoreProvider(
    this._storeUsecase,
    this._createUsecase,
    this._gameUsecase,
    this._storeId,
  );

  Future<void> getStore() async {
    _store = await _storeUsecase.getStore(_storeId);
    notifyListeners();
  }

  Future<void> setStore(PartnerStoreDetailModel model) async {
    _store = model;
    notifyListeners();
  }

  Future<bool> updateStore() async {
    return await _storeUsecase.updateStore(store!);
  }

  Future<bool> getImageUrl(
      {required int index, required List<int> binaryData}) async {
    final url = await _createUsecase.uploadImage(binaryData);
    if (url != null) {
      if (_store!.storeImages.length < index) {
        _store!.storeImages.removeAt(index);
      }
      _store!.storeImages.insert(index, StoreImageModel(url: url));
      notifyListeners();
      return true;
    } else {
      return false;
    }
  }

  Future<void> addGame() async {
    final result = await _gameUsecase.addGame(CreateGameModel(
        storeUid: _storeId,
        type: TonerType.daily,
        entryPrice: 10000,
        entryMin: 1,
        entryMax: 0,
        prize: '100%',
        targetMttName: '',
        gtdMinReward: 1000000,
        isDaily: false));
    if (result != null) {
      _games.add(result);
    }
    notifyListeners();
  }

  Future<void> getGames() async {
    _games = await _gameUsecase.getGames(_storeId);

    notifyListeners();
  }

  Future<void> updateGame(
      {required int index, required MttGameModel game}) async {
    _games.removeAt(index);
    _games.insert(index, game);
    await _gameUsecase.updateGame(id: game.uid, data: game);
    notifyListeners();
  }

  Future<void> deleteGame(int index) async {
    final result = await _gameUsecase.deleteGame(games[index].uid);
    if (result) {
      _games.removeAt(index);
    }
    notifyListeners();
  }

  /// TODO 무료 제휴 외 제휴 id도 받을수 있도록 변경 필요
  Future<bool> applyAffiliate() async {
    return _storeUsecase.applyAffiliate(
        storeId: _storeId, affiliateId: await getAffiliates() ?? '');
  }

  Future<bool> getAffiliate() async {
    return _storeUsecase.getAffiliate(_storeId);
  }

  Future<String?> getAffiliates() async {
    return _storeUsecase.getAffiliates();
  }

  Future<bool> pause(String id) async {
    return _storeUsecase.pause(id);
  }

  Future<bool> unPause(String id) async {
    return _storeUsecase.unPause(id);
  }
}
