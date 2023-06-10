import 'package:flutter/material.dart';
import 'package:pokerspot_partner_app/presentation/widgets/button/text_button.dart';
import 'package:pokerspot_partner_app/presentation/widgets/divider/divider.dart';
import 'package:pokerspot_partner_app/common/constants/sizes.dart';
import 'package:pokerspot_partner_app/presentation/views/main/sections/home/components/tournament/tournament_item.dart';
import 'package:pokerspot_partner_app/presentation/views/main/sections/home/data/tournament_data.dart';

class HomeTournament extends StatelessWidget {
  const HomeTournament({Key? key}) : super(key: key);

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
                      '당일 진행 토너먼트',
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                  ),
                  CustomTextButton(
                    text: '더보기',
                    theme: CustomTextButtonTheme.primary,
                    trailingIcon: Icons.keyboard_arrow_right,
                    onClick: () {},
                  ),
                ],
              ),
              const SizedBox(height: padding24),
              Column(
                children: tournamentList
                    .map(
                      (it) => HomeTournamentItem(
                        isPlaying: it.isPlaying,
                        tournamentType: it.tournamentType,
                        isToday: it.isToday,
                        isLive: it.isLive,
                        isAvailable: it.isAvailable,
                      ),
                    )
                    .toList(),
              ),
            ],
          ),
        ),
        const SizedBox(height: padding24),
        const CustomDivider(),
      ],
    );
  }
}
