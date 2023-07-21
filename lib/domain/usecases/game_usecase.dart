import 'package:pokerspot_partner_app/data/repositories/game_repository.dart';

import '../../data/models/game/create_game.dart';
import '../../data/models/store/mtt_game.dart';

class GameUsecase {
  final GameRepository _repository;

  GameUsecase(this._repository);

  Future<List<MttGameModel>> getGames(String id) async {
    return await _repository
        .getGames(id)
        .then((value) => value.fold((l) => [], (r) => r));
  }

  Future<MttGameModel?> addGame(CreateGameModel model) async {
    return await _repository.addGame(model);
  }

  Future<bool> updateGame(
      {required String id, required MttGameModel data}) async {
    return await _repository.updateGame(id: id, data: data);
  }

  Future<bool> deleteGame(String id) async {
    return await _repository.deleteGame(id);
  }
}
