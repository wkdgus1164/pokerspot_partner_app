import 'package:flutter/material.dart';
import 'package:pokerspot_partner_app/common/constants/sizes.dart';
import 'package:pokerspot_partner_app/common/theme/color.dart';

class PartnershipStatusInfo extends StatelessWidget {
  const PartnershipStatusInfo({
    super.key,
    required this.startedAt,
    required this.finishAt,
    required this.lastDays,
  });

  final String startedAt;
  final String finishAt;
  final int lastDays;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(padding16),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: lightColorScheme.outline),
        borderRadius: BorderRadius.circular(4),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '제휴 최종 시작일',
                style: Theme.of(context).textTheme.labelLarge!.copyWith(
                      color: customColorScheme.onSurface3,
                    ),
              ),
              const SizedBox(width: 10),
              Text(
                startedAt,
                style: Theme.of(context).textTheme.labelLarge!.copyWith(
                      color: customColorScheme.onSurface2,
                    ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '제휴 종료 예정일',
                style: Theme.of(context).textTheme.labelLarge!.copyWith(
                      color: customColorScheme.onSurface3,
                    ),
              ),
              const SizedBox(width: 10),
              Text(
                '$finishAt${lastDays != 0 ? ' ($lastDays일 남음)' : ''}',
                style: Theme.of(context).textTheme.labelLarge!.copyWith(
                      color: customColorScheme.onSurface2,
                    ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
