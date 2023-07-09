import 'package:flutter/material.dart';
import 'package:pokerspot_partner_app/common/theme/color.dart';

import '../../../../../../../data/models/store/mtt_game.dart';

class TournamentItemHeader extends StatelessWidget {
  const TournamentItemHeader({
    super.key,
    this.displayIndex,
    required this.tournamentType,
  });

  final int? displayIndex;
  final TonerType tournamentType;

  String setDisplayName() {
    switch (tournamentType) {
      case TonerType.daily:
        return "데일리 토너";
      case TonerType.seed:
        return "시드권 토너";
      default:
        return "GTD 토너";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 6,
            vertical: 4,
          ),
          decoration: ShapeDecoration(
            color: lightColorScheme.primary,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(2),
            ),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                setDisplayName(),
                style: Theme.of(context).textTheme.labelMedium!.copyWith(
                      color: lightColorScheme.onPrimary,
                    ),
              ),
            ],
          ),
        ),
        const SizedBox(width: 10),
        if (displayIndex != null)
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 4),
            decoration: ShapeDecoration(
              color: lightColorScheme.error,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(100),
              ),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  '노출 순서 $displayIndex',
                  style: Theme.of(context).textTheme.labelMedium!.copyWith(
                        color: lightColorScheme.onSecondary,
                      ),
                ),
              ],
            ),
          ),
      ],
    );
  }
}
