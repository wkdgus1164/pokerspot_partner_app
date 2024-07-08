import 'package:pokerspot_partner_app/apps/domain/first_game/first_game_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'first_game_form_data.g.dart';

@riverpod
class GameCreateDailyFirstGameFormData
    extends _$GameCreateDailyFirstGameFormData {
  @override
  GameFirstGameModel build() {
    return GameFirstGameModel(firstGame: false);
  }

  void setFirstGame(bool firstGame) {
    state = state.copyWith(firstGame: firstGame);
  }
}
