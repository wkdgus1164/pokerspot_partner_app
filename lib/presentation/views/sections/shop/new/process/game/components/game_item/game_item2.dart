import 'package:flutter/material.dart';
import 'package:pokerspot_partner_app/common/constants/sizes.dart';
import 'package:pokerspot_partner_app/common/theme/color.dart';
import 'package:pokerspot_partner_app/presentation/effects/card_shadow.dart';
import 'package:pokerspot_partner_app/presentation/views/sections/shop/new/process/game/components/game_item/header.dart';

class GameItem2 extends StatelessWidget {
  const GameItem2({
    super.key,
    required this.onEditPressed,
    required this.onDeletePressed,
    required this.title,
    required this.tonerType,
    required this.entryFee,
    required this.entryMin,
    required this.entryMax,
    required this.prize,
    this.targetToner,
    this.isEveryDay = false,
  });

  final String title;
  final Function() onEditPressed;
  final Function() onDeletePressed;
  final String tonerType;
  final int entryFee;
  final String entryMin;
  final String entryMax;
  final int prize;
  final String? targetToner;
  final bool isEveryDay;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: padding16),
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        border: Border.all(color: lightColorScheme.outline),
        borderRadius: BorderRadius.circular(8),
        boxShadow: [cardShadow],
        color: lightColorScheme.surface,
      ),
      child: Column(
        children: [
          GameItemHeader(
            title: title,
            onEditPressed: onEditPressed,
            onDeletePressed: onDeletePressed,
            isEveryDay: isEveryDay,
          ),
          const Divider(height: 1, thickness: 1),
          Container(
            padding: const EdgeInsets.all(padding16),
            child: Wrap(
              runSpacing: padding16,
              children: [
                _buildBody(context, '토너 종류', tonerType),
                _buildBody(context, '참가비', '$entryFee만 chip'),
                _buildBody(context, '엔트리', '$entryMin ~ $entryMax'),
                _buildBody(context, '프라이즈', '$prize%'),
                if (targetToner != null)
                  _buildBody(context, '타겟 토너', targetToner!),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Row _buildBody(BuildContext context, String title, String content) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.labelLarge!.copyWith(
                color: customColorScheme.onSurface3,
              ),
        ),
        Text(
          content,
          style: Theme.of(context).textTheme.labelLarge!.copyWith(
                color: customColorScheme.onSurface2,
              ),
        ),
      ],
    );
  }
}
