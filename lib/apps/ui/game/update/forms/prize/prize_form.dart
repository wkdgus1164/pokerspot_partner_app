import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pokerspot_partner_app/apps/global/constants/utils.dart';
import 'package:pokerspot_partner_app/apps/global/global.dart';
import 'package:pokerspot_partner_app/apps/ui/game/update/forms/prize/prize_form_data.dart';

class GameUpdatePrizeFormView extends StatefulHookConsumerWidget {
  const GameUpdatePrizeFormView({
    super.key,
    required this.prize,
  });

  final int prize;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _GameUpdatePrizeFormViewState();
}

class _GameUpdatePrizeFormViewState
    extends ConsumerState<GameUpdatePrizeFormView> {
  String get _prize => widget.prize.toString();
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    controller.text = _prize;

    return PTextField(
      labelText: '프라이즈 비율',
      keyboardType: TextInputType.number,
      hintText: "50% ~ 100% 사이의 비율",
      handleChange: _handleChange,
      controller: controller,
      endText: '%',
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
      ref.read(gameUpdatePrizeFormDataProvider.notifier).setPrize(0);
    } else {
      ref.read(gameUpdatePrizeFormDataProvider.notifier).setPrize(
            int.parse(v),
          );
    }
  }
}
