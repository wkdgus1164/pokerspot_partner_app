import 'package:flutter/material.dart';
import 'package:pokerspot_partner_app/common/constants/sizes.dart';
import 'package:pokerspot_partner_app/common/theme/color.dart';
import 'package:pokerspot_partner_app/presentation/views/main/sections/home/components/tournament/information/item_information.dart';
import 'package:pokerspot_partner_app/presentation/views/main/sections/home/components/tournament/information/operation_switches.dart';
import 'package:pokerspot_partner_app/presentation/views/main/sections/home/models/tournament_model.dart';

BoxDecoration decoration(bool isAvailable) {
  return BoxDecoration(
    color: Colors.white,
    boxShadow: [
      BoxShadow(
        color: Colors.grey.withOpacity(0.1),
        spreadRadius: 2,
        blurRadius: 4,
        offset: const Offset(0, 2),
      ),
    ],
    borderRadius: BorderRadius.circular(defaultRadius * 2),
    border: Border.all(
      width: 2,
      color: setAvailableColor(isAvailable),
    ),
  );
}

Color setAvailableColor(bool isAvailable) {
  if (isAvailable) {
    return const Color.fromRGBO(148, 159, 255, 1);
  } else {
    return greyVariant2;
  }
}

class HomeTournamentItem extends StatelessWidget {
  const HomeTournamentItem({
    Key? key,
    required this.isPlaying,
    required this.tournamentType,
    required this.isToday,
    required this.isLive,
    required this.isAvailable,
  }) : super(key: key);

  final bool isPlaying;
  final TournamentType tournamentType;
  final bool isToday;
  final bool isLive;
  final bool isAvailable;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(padding16),
      margin: const EdgeInsets.only(bottom: padding16),
      decoration: decoration(isAvailable),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // 토너 제목, 진행 여부, 타입
          TournamentItemInformation(
            title: '3만 데일리 토너먼트',
            isAvailable: isAvailable,
            tournamentType: tournamentType,
          ),
          const SizedBox(height: padding10),
          const Divider(
            height: 1,
            thickness: 1,
            color: Color.fromRGBO(216, 216, 216, 1),
          ),
          const SizedBox(height: 4),

          // 스위치
          TournamentOperationSwitches(
            isToday: isToday,
            isLive: isLive,
          ),
        ],
      ),
    );
  }
}
