import 'package:flutter/foundation.dart';

import '../../data/models/store/mtt_game.dart';
import '../../domain/usecases/tournament_usecase.dart';

class TournamentProvider with ChangeNotifier {
  final TournamentUsecase _usecase;

  List<MttGameModel> _games;
  List<MttGameModel> get games => _games;

  TournamentProvider(this._usecase, this._games);

  Future<void> updateGame(MttGameModel game) async {
    final success = await _usecase.updateGame(game);
    if (success) {
      final index = _games.indexWhere((element) => element.uid == game.uid);
      _games.setRange(index, index + 1, [game]);
      notifyListeners();
    }
  }
}
