import 'package:flutter/material.dart';
import 'package:pokerspot_partner_app/common/constants/sizes.dart';
import 'package:pokerspot_partner_app/common/theme/color.dart';
import 'package:pokerspot_partner_app/presentation/views/sections/home/tournament_admin/components/display_index/item.dart';
import 'package:pokerspot_partner_app/presentation/widgets/info_box/info_box.dart';

class TournamentAdminDisplayIndex extends StatelessWidget {
  const TournamentAdminDisplayIndex({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              '노출 순서',
              style: Theme.of(context).textTheme.titleLarge!.copyWith(
                    color: customColorScheme.onSurface1,
                    fontWeight: FontWeight.bold,
                  ),
            ),
          ],
        ),
        const SizedBox(height: padding16),
        const InfoBox(
          text: '포커스팟 앱 - 매장 리스트에서 노출되는 토너먼트 목록 순서',
        ),
        const SizedBox(height: padding16),
        const Wrap(
          runSpacing: padding16,
          children: [
            DisplayIndexItem(),
            DisplayIndexItem(),
            DisplayIndexItem(),
          ],
        ),
      ],
    );
  }
}
