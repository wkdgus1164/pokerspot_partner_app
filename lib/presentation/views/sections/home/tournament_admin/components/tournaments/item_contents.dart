import 'package:flutter/material.dart';
import 'package:pokerspot_partner_app/common/constants/sizes.dart';
import 'package:pokerspot_partner_app/common/theme/color.dart';
import 'package:pokerspot_partner_app/presentation/views/sections/home/components/tournament/item/item_footer.dart';

class TournamentsItemContents extends StatelessWidget {
  const TournamentsItemContents({
    super.key,
    required this.tournamentType,
    required this.tournamentTitle,
    required this.entryMin,
    required this.entryMax,
    required this.prize,
  });

  final String tournamentType;
  final String tournamentTitle;
  final int entryMin;
  final int? entryMax;
  final String prize;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(padding16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
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
            child: Text(
              tournamentType,
              style: Theme.of(context).textTheme.labelMedium!.copyWith(
                    color: lightColorScheme.onPrimary,
                  ),
            ),
          ),
          const SizedBox(height: padding10),
          Text(
            tournamentTitle,
            style: Theme.of(context).textTheme.titleMedium!.copyWith(
                  color: customColorScheme.onSurface1,
                ),
          ),
          const SizedBox(height: 10),
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
