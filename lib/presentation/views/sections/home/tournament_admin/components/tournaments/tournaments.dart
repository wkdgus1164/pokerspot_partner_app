import 'package:flutter/material.dart';
import 'package:pokerspot_partner_app/common/theme/color.dart';
import 'package:pokerspot_partner_app/presentation/views/sections/home/tournament_admin/components/tournaments/item.dart';
import 'package:pokerspot_partner_app/presentation/widgets/button/text_button.dart';

class TournamentAdminTournaments extends StatelessWidget {
  const TournamentAdminTournaments({super.key});

  @override
  Widget build(BuildContext context) {
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
                    '3',
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
        TournamentsItem(
          tournamentType: '시드권 토너',
          tournamentTitle: '가나다라 시드권 토너먼트',
          entryMin: 10,
          entryMax: 25,
          isToday: true,
          isRealtime: false,
          prize: 80,
          onTodaySwitchChanged: (v) {},
          onRealtimeSwitchChanged: (v) {},
        ),
        TournamentsItem(
          tournamentType: '시드권 토너',
          tournamentTitle: '가나다라 시드권 토너먼트',
          entryMin: 10,
          entryMax: 25,
          isToday: true,
          isRealtime: false,
          prize: 80,
          onTodaySwitchChanged: (v) {},
          onRealtimeSwitchChanged: (v) {},
        ),
        TournamentsItem(
          tournamentType: '시드권 토너',
          tournamentTitle: '가나다라 시드권 토너먼트',
          entryMin: 10,
          entryMax: 25,
          isToday: true,
          isRealtime: false,
          prize: 80,
          onTodaySwitchChanged: (v) {},
          onRealtimeSwitchChanged: (v) {},
        ),
        TournamentsItem(
          tournamentType: '시드권 토너',
          tournamentTitle: '가나다라 시드권 토너먼트',
          entryMin: 10,
          entryMax: 25,
          isToday: true,
          isRealtime: false,
          prize: 80,
          onTodaySwitchChanged: (v) {},
          onRealtimeSwitchChanged: (v) {},
        ),
      ],
    );
  }
}
