import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pokerspot_partner_app/apps/global/global.dart';
import 'package:pokerspot_partner_app/apps/ui/game/update/forms/duration/duration_form_data.dart';

class GameUpdateDurationFormView extends ConsumerStatefulWidget {
  const GameUpdateDurationFormView({
    super.key,
    required this.duration,
  });

  final int duration;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _GameUpdateDurationFormViewState();
}

class _GameUpdateDurationFormViewState
    extends ConsumerState<GameUpdateDurationFormView> {
  String get _duration => widget.duration.toString();

  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    controller.text = _duration;

    return PTextField(
      labelText: '듀레이션',
      hintText: '분 단위의 듀레이션',
      handleChange: _handleChange,
      controller: controller,
      endText: '분',
    );
  }

  void _handleChange(String? v) {
    if (v!.isEmpty) {
      ref.read(gameUpdateDurationFormDataProvider.notifier).setDuration(0);
    } else {
      ref.read(gameUpdateDurationFormDataProvider.notifier).setDuration(
            int.parse(v),
          );
    }
  }
}
