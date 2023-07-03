import 'package:flutter/material.dart';
import 'package:pokerspot_partner_app/common/constants/sizes.dart';
import 'package:pokerspot_partner_app/common/theme/color.dart';
import 'package:pokerspot_partner_app/presentation/effects/card_shadow.dart';
import 'package:pokerspot_partner_app/presentation/views/sections/home/tournament_admin/components/display_index/item_body.dart';
import 'package:pokerspot_partner_app/presentation/views/sections/home/tournament_admin/components/display_index/item_header.dart';

class DisplayIndexItem extends StatelessWidget {
  const DisplayIndexItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(Icons.menu, color: customColorScheme.onSurface4),
        const SizedBox(width: padding10),
        Expanded(
          child: Container(
            padding: const EdgeInsets.all(padding16),
            decoration: ShapeDecoration(
              color: lightColorScheme.surface,
              shape: RoundedRectangleBorder(
                side: BorderSide(color: lightColorScheme.primary),
                borderRadius: BorderRadius.circular(12),
              ),
              shadows: [cardShadow],
            ),
            child: const Column(
              children: [
                DisplayIndexItemHeader(
                  text: '시드권 토너 ',
                  index: 1,
                ),
                SizedBox(height: padding10),
                DisplayIndexItemBody(
                  text: '가나다라 시드권 토너먼트',
                  isToday: true,
                  isRealtime: true,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
