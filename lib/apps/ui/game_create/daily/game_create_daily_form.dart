import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pokerspot_partner_app/apps/ui/game_create/daily/forms/buy_in/buy_in_form.dart';
import 'package:pokerspot_partner_app/apps/ui/game_create/daily/forms/duration/duration_form.dart';
import 'package:pokerspot_partner_app/apps/ui/game_create/daily/forms/every_day/every_day_form.dart';
import 'package:pokerspot_partner_app/apps/ui/game_create/daily/forms/first_game/first_game_form.dart';
import 'package:pokerspot_partner_app/apps/ui/game_create/daily/forms/max_entry/max_entry_form.dart';
import 'package:pokerspot_partner_app/apps/ui/game_create/daily/forms/min_entry/min_entry_form.dart';
import 'package:pokerspot_partner_app/apps/ui/game_create/daily/forms/prize/prize_form.dart';

class GameCreateDailyForm extends StatefulHookConsumerWidget {
  const GameCreateDailyForm({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _GameCreateDailyFormState();
}

class _GameCreateDailyFormState extends ConsumerState<GameCreateDailyForm> {
  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SizedBox(height: 16),
        GameCreateDailyBuyinFormView(),
        SizedBox(height: 16),
        GaneCreateDailyMinEntryFormView(),
        SizedBox(height: 16),
        GameCreateDailyMaxEntryFormView(),
        SizedBox(height: 16),
        GameCreateDailyPrizeFormView(),
        SizedBox(height: 16),
        GameCreateDailyDurationFormView(),
        SizedBox(height: 16),
        GameCreateFirstGameFormView(),
        SizedBox(height: 16),
        GameCreateEveryDayFormView(),
      ],
    );
  }
}
