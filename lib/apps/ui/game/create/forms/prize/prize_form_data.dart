import 'package:pokerspot_partner_app/apps/domain/prize/prize_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'prize_form_data.g.dart';

@riverpod
class GameCreatePrizeFormData extends _$GameCreatePrizeFormData {
  @override
  GamePrizeModel build() {
    return GamePrizeModel(prize: 0);
  }

  void setPrize(int prize) {
    state = state.copyWith(prize: prize);
  }
}
