import 'package:pokerspot_partner_app/apps/domain/min_entry/min_entry_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'min_entry_form_data.g.dart';

@riverpod
class GameCreateDailyMinEntryFormData
    extends _$GameCreateDailyMinEntryFormData {
  @override
  GameMinEntryModel build() {
    return GameMinEntryModel(minEntry: 0);
  }

  void setMinEntry(int minEntry) {
    state = state.copyWith(minEntry: minEntry);
  }
}
