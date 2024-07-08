import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pokerspot_partner_app/apps/global/constants/utils.dart';
import 'package:pokerspot_partner_app/apps/global/global.dart';
import 'package:pokerspot_partner_app/apps/ui/game_create/daily/forms/min_entry/min_entry_form_data.dart';

class GaneCreateDailyMinEntryFormView extends StatefulHookConsumerWidget {
  const GaneCreateDailyMinEntryFormView({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _GaneCreateDailyMinEntryFormViewState();
}

class _GaneCreateDailyMinEntryFormViewState
    extends ConsumerState<GaneCreateDailyMinEntryFormView> {
  @override
  Widget build(BuildContext context) {
    return PTextField(
      labelText: '최소 엔트리',
      keyboardType: TextInputType.number,
      hintText: '100만 이내의 최소 엔트리',
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
      ref.read(gameCreateDailyMinEntryFormDataProvider.notifier).setMinEntry(0);
    } else {
      ref.read(gameCreateDailyMinEntryFormDataProvider.notifier).setMinEntry(
            int.parse(v),
          );
    }
  }
}
