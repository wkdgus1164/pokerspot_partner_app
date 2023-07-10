import 'package:flutter/material.dart';
import 'package:pokerspot_partner_app/common/constants/sizes.dart';
import 'package:pokerspot_partner_app/common/theme/color.dart';
import 'package:pokerspot_partner_app/presentation/effects/card_shadow.dart';

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
    required this.targetToner,
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
  final String targetToner;
  final bool isEveryDay;

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        border: Border.all(color: lightColorScheme.outline),
        borderRadius: BorderRadius.circular(8),
        boxShadow: [cardShadow],
        color: lightColorScheme.surface,
      ),
      child: Column(
        children: [
          _buildHeader(context, title, onEditPressed, onDeletePressed),
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
              ],
            ),
          ),
        ],
      ),
    );
  }

  Container _buildHeader(
    BuildContext context,
    String title,
    Function() onEditPressed,
    Function() onDeletePressed,
  ) {
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
                    if (isEveryDay)
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: padding10,
                          vertical: 6,
                        ),
                        decoration: BoxDecoration(
                          border: Border.all(color: lightColorScheme.outline),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Row(
                          children: [
                            Text(
                              '매일 진행',
                              textAlign: TextAlign.center,
                              style: Theme.of(context)
                                  .textTheme
                                  .labelLarge!
                                  .copyWith(
                                    color: customColorScheme.onSurface1,
                                  ),
                            ),
                          ],
                        ),
                      )
                  ],
                ),
              ),
              Row(
                children: [
                  IconButton(
                    icon: Icon(
                      Icons.edit_rounded,
                      color: customColorScheme.onSurface3,
                    ),
                    onPressed: onEditPressed,
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.delete_rounded,
                      color: customColorScheme.onSurface3,
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
