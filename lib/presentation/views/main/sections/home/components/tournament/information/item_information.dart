import 'package:flutter/material.dart';
import 'package:pokerspot_partner_app/common/constants/sizes.dart';
import 'package:pokerspot_partner_app/presentation/views/main/sections/home/components/tournament/information/entry_prize.dart';
import 'package:pokerspot_partner_app/presentation/views/main/sections/home/components/tournament/information/item_type.dart';
import 'package:pokerspot_partner_app/presentation/views/main/sections/home/models/tournament_model.dart';

class TournamentItemInformation extends StatelessWidget {
  const TournamentItemInformation({
    Key? key,
    required this.title,
    required this.isAvailable,
    required this.tournamentType,
  }) : super(key: key);

  final String title;
  final bool isAvailable;
  final TournamentType tournamentType;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 6),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // 토너 종류
          ItemType(
            isAvailable: isAvailable,
            tournamentType: tournamentType,
          ),
          const SizedBox(height: padding10),

          // 토너 제목
          Text(
            title,
            style: Theme.of(context).textTheme.titleMedium,
          ),
          const SizedBox(height: padding10),

          // 토너 정보
          const TournamentInformationEntryPrize(
            entry: '10 - 25',
            prize: 80,
          ),
        ],
      ),
    );
  }
}
