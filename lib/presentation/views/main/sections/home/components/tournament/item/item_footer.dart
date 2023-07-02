import 'package:flutter/material.dart';
import 'package:pokerspot_partner_app/common/constants/sizes.dart';
import 'package:pokerspot_partner_app/common/theme/color.dart';

class TournamentItemFooter extends StatelessWidget {
  const TournamentItemFooter({
    Key? key,
    required this.prize,
    required this.entryMin,
    required this.entryMax,
  }) : super(key: key);

  final int entryMin;
  final int entryMax;
  final int prize;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      children: [
        _buildTemplate(context, 'ENTRY', '$entryMin - $entryMax'),
        const SizedBox(width: padding16),
        _buildTemplate(context, 'PRIZE', '$prize%'),
      ],
    );
  }

  Row _buildTemplate(BuildContext context, String title, String value) {
    return Row(
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.labelSmall!.copyWith(
                color: customColorScheme.onSurface3,
              ),
        ),
        const SizedBox(width: 4),
        Text(
          value,
          style: Theme.of(context).textTheme.labelLarge!.copyWith(
                color: customColorScheme.onSurface2,
                fontWeight: FontWeight.bold,
              ),
        ),
      ],
    );
  }
}
