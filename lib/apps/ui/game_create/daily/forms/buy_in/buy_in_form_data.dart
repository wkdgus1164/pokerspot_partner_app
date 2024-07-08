import 'package:pokerspot_partner_app/apps/domain/buy_in/buy_in_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'buy_in_form_data.g.dart';

@riverpod
class GameCreateDailyBuyInFormData extends _$GameCreateDailyBuyInFormData {
  @override
  GameBuyInModel build() {
    return GameBuyInModel(buyIn: 0);
  }

  void setBuyIn(int buyIn) {
    state = state.copyWith(buyIn: buyIn);
  }
}
