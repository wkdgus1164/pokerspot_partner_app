import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pokerspot_partner_app/apps/global/global.dart';
import 'package:pokerspot_partner_app/apps/ui/game_create/forms/duration/duration_form_data.dart';

class GameCreateDailyDurationFormView extends StatefulHookConsumerWidget {
  const GameCreateDailyDurationFormView({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _GameCreateDailyDurationFormViewState();
}

class _GameCreateDailyDurationFormViewState
    extends ConsumerState<GameCreateDailyDurationFormView> {
  @override
  Widget build(BuildContext context) {
    return PTextField(
      labelText: '듀레이션',
      keyboardType: TextInputType.number,
      hintText: "분 단위의 듀레이션",
      handleChange: _handleChange,
      endText: '분',
    );
  }

  void _handleChange(String? v) {
    if (v!.isEmpty) {
      ref.read(gameCreateDurationFormDataProvider.notifier).setDuration(0);
    } else {
      ref.read(gameCreateDurationFormDataProvider.notifier).setDuration(
            int.parse(v),
          );
    }
  }
}
