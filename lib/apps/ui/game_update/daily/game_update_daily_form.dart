import 'package:flutter/material.dart';
import 'package:pokerspot_partner_app/apps/ui/game_update/forms/buy_in/buy_in_form.dart';
import 'package:pokerspot_partner_app/apps/ui/game_update/forms/duration/duration_form.dart';
import 'package:pokerspot_partner_app/apps/ui/game_update/forms/every_day/every_day_form.dart';
import 'package:pokerspot_partner_app/apps/ui/game_update/forms/first_game/first_game_form.dart';
import 'package:pokerspot_partner_app/apps/ui/game_update/forms/max_entry/max_entry_form.dart';
import 'package:pokerspot_partner_app/apps/ui/game_update/forms/min_entry/min_entry_form.dart';
import 'package:pokerspot_partner_app/apps/ui/game_update/forms/prize/prize_form.dart';

class GameUpdateForm extends StatelessWidget {
  const GameUpdateForm({
    super.key,
    required this.buyIn,
    required this.minEntry,
    required this.maxEntry,
    required this.prize,
    required this.duration,
    required this.firstGame,
    required this.everyDay,
  });

  final int buyIn;
  final int minEntry;
  final int maxEntry;
  final int prize;
  final int duration;
  final bool firstGame;
  final bool everyDay;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const SizedBox(height: 16),
        GameUpdateBuyInFormView(buyIn: buyIn),
        const SizedBox(height: 16),
        GameUpdateMinEntryFormView(minEntry: minEntry),
        const SizedBox(height: 16),
        GameUpdateMaxEntryFormView(maxEntry: maxEntry),
        const SizedBox(height: 16),
        GameUpdatePrizeFormView(prize: prize),
        const SizedBox(height: 16),
        GameUpdateDurationFormView(duration: duration),
        const SizedBox(height: 16),
        GameUpdateFirstGameFormView(firstGame: firstGame),
        const SizedBox(height: 16),
        GameUpdateEveryDayFormView(everyDay: everyDay),
      ],
    );
  }
}
