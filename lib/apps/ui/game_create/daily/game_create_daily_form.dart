import 'package:flutter/material.dart';
import 'package:pokerspot_partner_app/apps/global/constants/enums.dart';
import 'package:pokerspot_partner_app/apps/ui/game_create/forms/buy_in/buy_in_form.dart';
import 'package:pokerspot_partner_app/apps/ui/game_create/forms/duration/duration_form.dart';
import 'package:pokerspot_partner_app/apps/ui/game_create/forms/every_day/every_day_form.dart';
import 'package:pokerspot_partner_app/apps/ui/game_create/forms/first_game/first_game_form.dart';
import 'package:pokerspot_partner_app/apps/ui/game_create/forms/max_entry/max_entry_form.dart';
import 'package:pokerspot_partner_app/apps/ui/game_create/forms/min_entry/min_entry_form.dart';
import 'package:pokerspot_partner_app/apps/ui/game_create/forms/prize/prize_form.dart';

class GameCreateDailyForm extends StatelessWidget {
  const GameCreateDailyForm({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SizedBox(height: 16),
        GameCreateBuyinFormView(gameType: GameType.DAILY),
        SizedBox(height: 16),
        GaneCreateMinEntryFormView(),
        SizedBox(height: 16),
        GameCreateDailyMaxEntryFormView(),
        SizedBox(height: 16),
        GameCreateDailyPrizeFormView(),
        SizedBox(height: 16),
        GameCreateDurationFormView(),
        SizedBox(height: 16),
        GameCreateFirstGameFormView(),
        SizedBox(height: 16),
        GameCreateEveryDayFormView(),
      ],
    );
  }
}
