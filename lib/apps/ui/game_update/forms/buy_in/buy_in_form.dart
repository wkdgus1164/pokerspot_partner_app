import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pokerspot_partner_app/apps/global/global.dart';
import 'package:pokerspot_partner_app/apps/ui/game_update/forms/buy_in/buy_in_form_data.dart';

class GameUpdateBuyInFormView extends StatefulHookConsumerWidget {
  const GameUpdateBuyInFormView({
    super.key,
    required this.buyIn,
  });

  final int buyIn;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _GameUpdateBuyInFormViewState();
}

class _GameUpdateBuyInFormViewState
    extends ConsumerState<GameUpdateBuyInFormView> {
  String get _buyIn => widget.buyIn.toString();

  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    controller.text = _buyIn;

    return PTextField(
      labelText: '참가비 (필수)',
      hintText: '30만 이내의 참가비',
      controller: controller,
      handleChange: _handleChange,
      endText: '만',
    );
  }

  void _handleChange(String? v) {
    if (v!.isEmpty) {
      ref.read(gameUpdateBuyInFormDataProvider.notifier).setBuyIn(0);
    } else {
      ref.read(gameUpdateBuyInFormDataProvider.notifier).setBuyIn(
            int.parse(v),
          );
    }
  }
}
