import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pokerspot_partner_app/apps/global/global.dart';
import 'package:pokerspot_partner_app/apps/ui/game/update/forms/max_entry/max_entry_form_data.dart';

class GameUpdateMaxEntryFormView extends StatefulHookConsumerWidget {
  const GameUpdateMaxEntryFormView({
    super.key,
    required this.maxEntry,
  });

  final int maxEntry;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _GameUpdateMaxEntryFormViewState();
}

class _GameUpdateMaxEntryFormViewState
    extends ConsumerState<GameUpdateMaxEntryFormView> {
  String get _maxEntry => widget.maxEntry.toString();
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    controller.text = _maxEntry;

    return PTextField(
      labelText: '최대 엔트리',
      controller: controller,
      keyboardType: TextInputType.number,
      hintText: "입력하지 않으면 제한 없음",
      handleChange: _handleChange,
      endText: '만',
    );
  }

  void _handleChange(String? v) {
    if (v!.isEmpty) {
      ref.read(gameUpdateMaxEntryFormDataProvider.notifier).setMaxEntry(0);
    } else {
      ref.read(gameUpdateMaxEntryFormDataProvider.notifier).setMaxEntry(
            int.parse(v),
          );
    }
  }
}
