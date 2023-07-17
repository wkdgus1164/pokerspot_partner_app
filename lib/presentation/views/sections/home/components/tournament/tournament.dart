import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pokerspot_partner_app/common/constants/sizes.dart';
import 'package:pokerspot_partner_app/common/routes/routes.dart';
import 'package:pokerspot_partner_app/common/theme/color.dart';
import 'package:pokerspot_partner_app/presentation/views/sections/home/components/tournament/tournament_item.dart';
import 'package:pokerspot_partner_app/presentation/widgets/button/custom_outlined_button.dart';
import 'package:pokerspot_partner_app/presentation/widgets/button/text_button.dart';
import 'package:pokerspot_partner_app/presentation/widgets/divider/divider.dart';

import '../../../../../../data/models/store/mtt_game.dart';

class HomeTournament extends StatefulWidget {
  const HomeTournament({
    Key? key,
    required this.games,
  }) : super(key: key);

  final List<MttGameModel> games;

  @override
  State<HomeTournament> createState() => _HomeTournamentState();
}

class _HomeTournamentState extends State<HomeTournament> {
  int _isMoreCount = 0;

  @override
  void initState() {
    super.initState();

    final gamesLength = widget.games.length;
    _isMoreCount = gamesLength <= 5 ? gamesLength : 5;
  }

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
                        context.push(CustomRouter.homeTournaments.path),
                  ),
                ],
              ),
              const SizedBox(height: padding24),
              Column(
                children: widget.games
                    .sortedByCompare((game) => game.priority,
                        (a, b) => a?.compareTo(b ?? 0) ?? 0)
                    .sublist(0, _isMoreCount)
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
        if (widget.games.length > 5)
          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(horizontal: padding16),
            child: CustomOutlinedButton(
              onPressed: () {
                setState(() {
                  _isMoreCount += 5;
                });
              },
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
