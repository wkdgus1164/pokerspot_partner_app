import 'package:flutter/material.dart';
import 'package:pokerspot_partner_app/common/theme/color.dart';
import 'package:pokerspot_partner_app/data/models/store/mtt_game.dart';
import 'package:pokerspot_partner_app/locator.dart';
import 'package:pokerspot_partner_app/presentation/providers/tournament_provider.dart';
import 'package:pokerspot_partner_app/presentation/views/sections/home/tournament_admin/components/tournaments/item.dart';
import 'package:pokerspot_partner_app/presentation/widgets/button/text_button.dart';
import 'package:provider/provider.dart';

class TournamentAdminTournaments extends StatelessWidget {
  const TournamentAdminTournaments({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<TournamentProvider>(
      create: (_) => locator(),
      child: Consumer<TournamentProvider>(builder: (_, provider, __) {
        return Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: Row(
                    children: [
                      Text(
                        '토너먼트',
                        style: Theme.of(context).textTheme.titleLarge!.copyWith(
                              color: customColorScheme.onSurface1,
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                      const SizedBox(width: 4),
                      Text(
                        provider.games.length.toString(),
                        style: Theme.of(context).textTheme.titleLarge!.copyWith(
                              color: lightColorScheme.primary,
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 4),
                CustomTextButton(
                  text: '토너먼츠 추가/변경',
                  onClick: () {},
                  theme: CustomTextButtonTheme.primary,
                ),
              ],
            ),
            const SizedBox(height: 16),
            ...provider.games.map(
              (e) => TournamentsItem(
                tournamentType: e.type.kr,
                tournamentTitle: e.name,
                entryMin: e.entryMin,
                entryMax: e.entryMax,
                isToday: e.isToday,
                isRealtime: e.isRealTime,
                prize: e.prize,
                onTodaySwitchChanged: (v) async {
                  await provider.updateGame(e.copyWith(isToday: v));
                },
                onRealtimeSwitchChanged: (v) async {
                  await provider.updateGame(e.copyWith(isRealTime: v));
                },
              ),
            ),
          ],
        );
      }),
    );
  }
}
