import 'package:flutter/material.dart';
import 'package:pokerspot_partner_app/common/constants/sizes.dart';
import 'package:pokerspot_partner_app/common/theme/color.dart';
import 'package:pokerspot_partner_app/presentation/views/sections/partnership/main/views/components/basic_info.dart';
import 'package:pokerspot_partner_app/presentation/views/sections/partnership/main/views/components/status_info.dart';

class PartnershipMainHeader extends StatelessWidget {
  const PartnershipMainHeader({
    super.key,
    required this.lastDays,
    required this.name,
    required this.startedAt,
    required this.finishedAt,
  });

  final int lastDays;
  final String name;
  final String startedAt;
  final String finishedAt;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const PartnershipMainBasicInfo(lastDays: 1),
          const SizedBox(height: padding16),
          Text(
            name,
            style: Theme.of(context).textTheme.titleLarge!.copyWith(
                  fontWeight: FontWeight.bold,
                  color: customColorScheme.onSurface1,
                ),
          ),
          const SizedBox(height: padding16),
          PartnershipStatusInfo(
            startedAt: startedAt,
            finishAt: finishedAt,
            lastDays: lastDays,
          ),
        ],
      ),
    );
  }
}
