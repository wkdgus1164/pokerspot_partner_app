import 'package:pokerspot_partner_app/apps/domain/game_name/game_name_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'game_name_form_data.g.dart';

@riverpod
class GameCreateDailyGameNameFormData
    extends _$GameCreateDailyGameNameFormData {
  @override
  GameNameModel build() {
    return GameNameModel(gameName: '');
  }

  void setGameName(String gameName) {
    state = state.copyWith(gameName: gameName);
  }
}
