import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pokerspot_partner_app/apps/global/constants/utils.dart';
import 'package:pokerspot_partner_app/apps/global/global.dart';
import 'package:pokerspot_partner_app/apps/ui/game/create/forms/prize/prize_form_data.dart';

class GameCreateDailyPrizeFormView extends StatefulHookConsumerWidget {
  const GameCreateDailyPrizeFormView({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _GameCreateDailyPrizeFormViewState();
}

class _GameCreateDailyPrizeFormViewState
    extends ConsumerState<GameCreateDailyPrizeFormView> {
  @override
  Widget build(BuildContext context) {
    return PTextField(
      labelText: '프라이즈 비율',
      keyboardType: TextInputType.number,
      hintText: "50% ~ 100% 사이의 비율",
      handleChange: _handleChange,
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
      ref.read(gameCreatePrizeFormDataProvider.notifier).setPrize(0);
    } else {
      ref.read(gameCreatePrizeFormDataProvider.notifier).setPrize(
            int.parse(v),
          );
    }
  }
}
