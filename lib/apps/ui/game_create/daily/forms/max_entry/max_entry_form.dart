import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pokerspot_partner_app/apps/global/global.dart';
import 'package:pokerspot_partner_app/apps/ui/game_create/daily/forms/max_entry/max_entry_form_data.dart';

class GameCreateDailyMaxEntryFormView extends StatefulHookConsumerWidget {
  const GameCreateDailyMaxEntryFormView({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _GameCreateDailyMaxEntryFormViewState();
}

class _GameCreateDailyMaxEntryFormViewState
    extends ConsumerState<GameCreateDailyMaxEntryFormView> {
  @override
  Widget build(BuildContext context) {
    return PTextField(
      labelText: '최대 엔트리',
      keyboardType: TextInputType.number,
      hintText: "입력하지 않으면 제한 없음",
      handleChange: _handleChange,
      endText: '만',
    );
  }

  void _handleChange(String? v) {
    if (v!.isEmpty) {
      ref.read(gameCreateDailyMaxEntryFormDataProvider.notifier).setMaxEntry(0);
    } else {
      ref.read(gameCreateDailyMaxEntryFormDataProvider.notifier).setMaxEntry(
            int.parse(v),
          );
    }
  }
}
