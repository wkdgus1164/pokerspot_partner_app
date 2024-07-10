import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pokerspot_partner_app/apps/global/constants/utils.dart';
import 'package:pokerspot_partner_app/apps/global/global.dart';
import 'package:pokerspot_partner_app/apps/ui/game_update/forms/min_entry/min_entry_form_data.dart';

class GameUpdateMinEntryFormView extends StatefulHookConsumerWidget {
  const GameUpdateMinEntryFormView({
    super.key,
    required this.minEntry,
  });

  final int minEntry;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _GameUpdateMinEntryFormViewState();
}

class _GameUpdateMinEntryFormViewState
    extends ConsumerState<GameUpdateMinEntryFormView> {
  String get _minEntry => widget.minEntry.toString();
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    controller.text = _minEntry;

    return PTextField(
      labelText: '최소 엔트리',
      keyboardType: TextInputType.number,
      hintText: '100만 이내의 최소 엔트리',
      controller: controller,
      handleChange: _handleChange,
      endText: '만',
      inputFormatters: [
        FilteringTextInputFormatter.allow(RegExp(r'^\d+')),
        TextInputFormatter.withFunction(
          (oldValue, newValue) => Utils.approveTextFieldNumberMax(
            oldValue,
            newValue,
            100,
          ),
        ),
      ],
    );
  }

  void _handleChange(String? v) {
    if (v!.isEmpty) {
      ref.read(gameUpdateMinEntryFormDataProvider.notifier).setMinEntry(0);
    } else {
      ref.read(gameUpdateMinEntryFormDataProvider.notifier).setMinEntry(
            int.parse(v),
          );
    }
  }
}
