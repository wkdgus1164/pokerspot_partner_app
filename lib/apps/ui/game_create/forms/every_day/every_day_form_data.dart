import 'package:pokerspot_partner_app/apps/domain/every_day/every_day_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'every_day_form_data.g.dart';

@riverpod
class GameCreateEverydayFormData extends _$GameCreateEverydayFormData {
  @override
  GameEveryDayModel build() {
    return GameEveryDayModel(everyDay: false);
  }

  void setEveryDay(bool everyDay) {
    state = state.copyWith(everyDay: everyDay);
  }
}
