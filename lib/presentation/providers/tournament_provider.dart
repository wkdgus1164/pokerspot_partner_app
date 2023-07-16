import 'package:collection/collection.dart';
import 'package:flutter/foundation.dart';
import 'package:pokerspot_partner_app/data/utils/logger.dart';

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
      Logger.d(game.toRequestPriority());
      Logger.d(game.toJson());
      notifyListeners();
    }
  }

  void updateGameDisplayIndex({required int oldIndex, required int newIndex}) {
    final item = _games.removeAt(oldIndex);
    _games.insert(newIndex, item);
    _games = games
        .mapIndexed((index, e) => e.copyWith(priority: index + 1))
        .toList();
    notifyListeners();
  }

  Future<bool> updateGamePriority() async {
    return await _usecase.updateGamePriority(games);
  }
}
