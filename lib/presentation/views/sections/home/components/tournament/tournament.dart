import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pokerspot_partner_app/common/constants/sizes.dart';
import 'package:pokerspot_partner_app/common/routes/base/home.dart';
import 'package:pokerspot_partner_app/common/theme/color.dart';
import 'package:pokerspot_partner_app/presentation/views/sections/home/components/tournament/tournament_item.dart';
import 'package:pokerspot_partner_app/presentation/widgets/button/custom_outlined_button.dart';
import 'package:pokerspot_partner_app/presentation/widgets/button/text_button.dart';
import 'package:pokerspot_partner_app/presentation/widgets/divider/divider.dart';

import '../../../../../../data/models/store/mtt_game.dart';

class HomeTournament extends StatelessWidget {
  const HomeTournament({
    Key? key,
    required this.games,
  }) : super(key: key);

  final List<MttGameModel> games;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.fromLTRB(
            padding16,
            padding16,
            padding10,
            0,
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Text(
                      '매장 토너먼트 현황',
                      style: Theme.of(context).textTheme.titleLarge!.copyWith(
                            color: customColorScheme.onSurface1,
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                  ),
                  CustomTextButton(
                    text: '옵션 변경',
                    theme: CustomTextButtonTheme.primary,
                    onClick: () =>
                        context.pushNamed(HomeRoutes.tournaments.path),
                  ),
                ],
              ),
              const SizedBox(height: padding24),
              Column(
                children: games
                    .map(
                      (it) => HomeTournamentItem(
                        tournamentType: it.type,
                        displayIndex: it.priority,
                        displayName: it.name,
                        isToday: it.isToday,
                        isRealtime: it.isRealTime,
                        entryMin: it.entryMin,
                        entryMax: it.entryMax ?? 0,
                        prize: it.prize,
                      ),
                    )
                    .toList(),
              ),
            ],
          ),
        ),
        Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: padding16),
          child: CustomOutlinedButton(
            onPressed: () {},
            text: '더보기',
            leadingIcon: Icons.add,
          ),
        ),
        const SizedBox(height: padding16),
        const CustomDivider(),
      ],
    );
  }
}
