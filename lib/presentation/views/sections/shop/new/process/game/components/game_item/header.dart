import 'package:flutter/material.dart';
import 'package:pokerspot_partner_app/common/constants/sizes.dart';
import 'package:pokerspot_partner_app/common/theme/color.dart';
import 'package:pokerspot_partner_app/presentation/views/sections/shop/new/process/game/components/game_item/everyday.dart';

class GameItemHeader extends StatelessWidget {
  const GameItemHeader({
    super.key,
    required this.title,
    required this.onEditPressed,
    required this.onDeletePressed,
    required this.isEveryDay,
  });

  final String title;
  final Function() onEditPressed;
  final Function() onDeletePressed;
  final bool isEveryDay;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: padding16),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Row(
                  children: [
                    Expanded(
                      child: Text(
                        title,
                        style:
                            Theme.of(context).textTheme.titleMedium!.copyWith(
                                  fontWeight: FontWeight.bold,
                                ),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    const SizedBox(width: 10),
                    if (isEveryDay) const EveryDay(),
                  ],
                ),
              ),
              Row(
                children: [
                  IconButton(
                    icon: Icon(
                      Icons.edit_rounded,
                      color: customColorScheme.onSurface4,
                    ),
                    onPressed: onEditPressed,
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.delete_rounded,
                      color: customColorScheme.onSurface4,
                    ),
                    onPressed: onDeletePressed,
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
