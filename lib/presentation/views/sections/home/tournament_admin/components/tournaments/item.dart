import 'package:flutter/material.dart';
import 'package:pokerspot_partner_app/common/constants/sizes.dart';
import 'package:pokerspot_partner_app/common/theme/color.dart';
import 'package:pokerspot_partner_app/presentation/effects/card_shadow.dart';
import 'package:pokerspot_partner_app/presentation/views/sections/home/tournament_admin/components/tournaments/item_contents.dart';
import 'package:pokerspot_partner_app/presentation/views/sections/home/tournament_admin/components/tournaments/item_switches.dart';

class TournamentsItem extends StatelessWidget {
  const TournamentsItem({
    super.key,
    required this.tournamentType,
    required this.tournamentTitle,
    required this.entryMin,
    required this.entryMax,
    required this.prize,
    required this.isToday,
    required this.isRealtime,
    this.onTodaySwitchChanged,
    this.onRealtimeSwitchChanged,
  });

  final String tournamentType;
  final String tournamentTitle;
  final int entryMin;
  final int entryMax;
  final int prize;
  final bool isToday;
  final bool isRealtime;
  final Function(bool)? onTodaySwitchChanged;
  final Function(bool)? onRealtimeSwitchChanged;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: padding16),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          side: BorderSide(
            width: 1,
            color: lightColorScheme.primary,
          ),
          borderRadius: BorderRadius.circular(12),
        ),
        shadows: [cardShadow],
      ),
      child: Column(
        children: [
          TournamentsItemContents(
            tournamentType: tournamentType,
            tournamentTitle: tournamentTitle,
            entryMin: entryMin,
            entryMax: entryMax,
            prize: prize.toString(),
          ),
          const Divider(height: 1, thickness: 1),
          TournamentsItemSwitches(
            firstSwitchValue: isToday,
            onFirstSwitchChanged: onTodaySwitchChanged,
            secondSwitchValue: isRealtime,
            onSecondSwitchChanged: onRealtimeSwitchChanged,
          ),
        ],
      ),
    );
  }
}
