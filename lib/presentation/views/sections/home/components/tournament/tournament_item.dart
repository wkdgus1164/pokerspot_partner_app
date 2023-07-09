import 'package:flutter/material.dart';
import 'package:pokerspot_partner_app/common/constants/sizes.dart';
import 'package:pokerspot_partner_app/common/theme/color.dart';
import 'package:pokerspot_partner_app/presentation/effects/card_shadow.dart';
import 'package:pokerspot_partner_app/presentation/views/sections/home/components/tournament/item/item_body.dart';
import 'package:pokerspot_partner_app/presentation/views/sections/home/components/tournament/item/item_footer.dart';
import 'package:pokerspot_partner_app/presentation/views/sections/home/components/tournament/item/item_header.dart';

import '../../../../../../data/models/store/mtt_game.dart';

class HomeTournamentItem extends StatelessWidget {
  const HomeTournamentItem({
    Key? key,
    required this.tournamentType,
    required this.displayIndex,
    required this.displayName,
    required this.isToday,
    required this.isRealtime,
    required this.entryMin,
    required this.entryMax,
    required this.prize,
  }) : super(key: key);

  final TonerType tournamentType;
  final int? displayIndex;
  final String displayName;
  final bool isToday;
  final bool isRealtime;
  final int entryMin;
  final int entryMax;
  final String prize;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: padding16),
      padding: const EdgeInsets.all(padding16),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          side: BorderSide(color: lightColorScheme.primary),
          borderRadius: BorderRadius.circular(12),
        ),
        shadows: [cardShadow],
      ),
      child: Column(
        children: [
          // 토너 종류, 노출 순서
          TournamentItemHeader(
            displayIndex: displayIndex,
            tournamentType: tournamentType,
          ),
          const SizedBox(height: padding10),

          // 토너먼트 이름, 당일 진행 여부, 실시간 여부
          TournamentItemBody(
            displayName: displayName,
            isToday: isToday,
            isRealtime: isRealtime,
          ),
          const SizedBox(height: padding10),

          // 엔트리, 프라이즈
          TournamentItemFooter(
            entryMin: entryMin,
            entryMax: entryMax,
            prize: prize,
          ),
        ],
      ),
    );
  }
}
