import 'package:flutter/material.dart';
import 'package:pokerspot_partner_app/common/constants/sizes.dart';
import 'package:pokerspot_partner_app/common/theme/color.dart';
import 'package:pokerspot_partner_app/presentation/effects/card_shadow.dart';
import 'package:pokerspot_partner_app/presentation/views/sections/home/tournament_admin/components/display_index/item_body.dart';
import 'package:pokerspot_partner_app/presentation/views/sections/home/tournament_admin/components/display_index/item_header.dart';

class DisplayIndexItem extends StatelessWidget {
  const DisplayIndexItem({
    super.key,
    required this.title,
    required this.type,
    required this.isToday,
    required this.isRealtime,
    required this.index,
  });

  final String title;
  final String type;
  final bool isToday;
  final bool isRealtime;
  final int index;

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
            child: Column(
              children: [
                DisplayIndexItemHeader(
                  text: type,
                  index: index,
                ),
                const SizedBox(height: padding10),
                DisplayIndexItemBody(
                  text: title,
                  isToday: isToday,
                  isRealtime: isRealtime,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
