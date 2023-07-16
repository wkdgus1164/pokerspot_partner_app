import '../../data/models/store/mtt_game.dart';
import '../../data/repositories/game_repository.dart';

class TournamentUsecase {
  final GameRepository _repository;

  TournamentUsecase(this._repository);

  Future<bool> updateGame(MttGameModel game) async {
    return await _repository.updateGame(id: game.uid, data: game);
  }

  Future<bool> updateGamePriority(List<MttGameModel> games) async {
    return await _repository.updateGamePriority(data: games);
  }
}
