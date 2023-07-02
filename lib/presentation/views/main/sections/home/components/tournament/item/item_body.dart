import 'package:flutter/material.dart';
import 'package:pokerspot_partner_app/common/constants/sizes.dart';
import 'package:pokerspot_partner_app/common/theme/color.dart';

class TournamentItemBody extends StatelessWidget {
  const TournamentItemBody({
    super.key,
    required this.displayName,
    required this.isToday,
    required this.isRealtime,
  });

  final String displayName;
  final bool isToday;
  final bool isRealtime;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Text(
            displayName,
            style: Theme.of(context).textTheme.titleMedium!.copyWith(
                  color: customColorScheme.onSurface1,
                ),
          ),
        ),
        if (isToday) ...[
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 8,
                height: 8,
                decoration: ShapeDecoration(
                  color: lightColorScheme.primary,
                  shape: const OvalBorder(),
                ),
              ),
              const SizedBox(width: 4),
              Text(
                '당일 진행',
                style: Theme.of(context).textTheme.labelMedium!.copyWith(
                      color: customColorScheme.onSurface3,
                    ),
              ),
            ],
          ),
        ],
        const SizedBox(width: padding10),
        if (isRealtime) ...[
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 8,
                height: 8,
                decoration: ShapeDecoration(
                  color: lightColorScheme.primary,
                  shape: const OvalBorder(),
                ),
              ),
              const SizedBox(width: 4),
              Text(
                '실시간',
                style: Theme.of(context).textTheme.labelMedium!.copyWith(
                      color: customColorScheme.onSurface3,
                    ),
              ),
            ],
          ),
        ],
        const SizedBox(width: padding10),
      ],
    );
  }
}
