import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pokerspot_partner_app/apps/global/constants/utils.dart';
import 'package:pokerspot_partner_app/apps/global/global.dart';
import 'package:pokerspot_partner_app/apps/ui/game_create/daily/forms/buy_in/buy_in_form_data.dart';
import 'package:pokerspot_partner_app/apps/ui/game_create/daily/forms/game_name/game_name_form_data.dart';

class GameCreateBuyinFormView extends StatefulHookConsumerWidget {
  const GameCreateBuyinFormView({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _GameCreateDailyBuyinFormViewState();
}

class _GameCreateDailyBuyinFormViewState
    extends ConsumerState<GameCreateBuyinFormView> {
  @override
  Widget build(BuildContext context) {
    return PTextField(
      labelText: '참가비(필수)',
      keyboardType: TextInputType.number,
      autofocus: true,
      hintText: '30만 이내의 참가비',
      handleChange: _handleChange,
      endText: '만',
      inputFormatters: [
        FilteringTextInputFormatter.allow(RegExp(r'^\d+')),
        TextInputFormatter.withFunction(
          (oldValue, newValue) => Utils.approveTextFieldNumberMax(
            oldValue,
            newValue,
            30,
          ),
        ),
      ],
    );
  }

  void _handleChange(String? v) {
    if (v!.isEmpty) {
      ref.read(gameCreateBuyInFormDataProvider.notifier).setBuyIn(0);
      ref.read(gameCreateGameNameFormDataProvider.notifier).setGameName(
            '',
          );
    } else {
      ref.read(gameCreateBuyInFormDataProvider.notifier).setBuyIn(
            int.parse(v),
          );
      ref.read(gameCreateGameNameFormDataProvider.notifier).setGameName(
            '${int.parse(v)}만 데일리 토너먼트',
          );
    }
  }
}
