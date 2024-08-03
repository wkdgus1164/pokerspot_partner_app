import 'package:pokerspot_partner_app/apps/domain/max_entry/max_entry_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'max_entry_form_data.g.dart';

@riverpod
class GameUpdateMaxEntryFormData extends _$GameUpdateMaxEntryFormData {
  @override
  GameMaxEntryModel build() {
    return GameMaxEntryModel(maxEntry: 0);
  }

  void setMaxEntry(int maxEntry) {
    state = state.copyWith(maxEntry: maxEntry);
  }
}
