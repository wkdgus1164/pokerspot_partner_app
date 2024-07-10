import 'package:pokerspot_partner_app/apps/domain/duration/duration_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'duration_form_data.g.dart';

@riverpod
class GameUpdateDurationFormData extends _$GameUpdateDurationFormData {
  @override
  GameDurationModel build() {
    return GameDurationModel(duration: 0);
  }

  void setDuration(int duration) {
    state = state.copyWith(duration: duration);
  }
}
