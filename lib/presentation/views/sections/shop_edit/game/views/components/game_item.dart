import 'package:flutter/material.dart';
import 'package:pokerspot_partner_app/common/constants/sizes.dart';
import 'package:pokerspot_partner_app/common/theme/color.dart';

import '../../../../../../../data/models/store/mtt_game.dart';

class ShopEditGameItem extends StatelessWidget {
  const ShopEditGameItem({
    super.key,
    required this.name,
    required this.isEveryday,
    this.type = TonerType.daily,
    required this.startFee,
    required this.minEntry,
    required this.maxEntry,
    required this.prize,
    required this.targetToner,
  });

  final String name;
  final bool isEveryday;
  final TonerType type;
  final int startFee;
  final int minEntry;
  final int maxEntry;
  final int prize;
  final String targetToner;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: padding16,
        vertical: 8,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: lightColorScheme.outline),
      ),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(left: padding16),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(
                          name,
                          style:
                              Theme.of(context).textTheme.titleMedium!.copyWith(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                        ),
                        const SizedBox(width: 16),
                        if (isEveryday) ...[
                          Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: padding10,
                              vertical: 6,
                            ),
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: lightColorScheme.outline,
                              ),
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
                                        color: customColorScheme.onSurface3,
                                      ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ],
                    ),
                    Row(
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.edit_rounded,
                            color: customColorScheme.onSurface3,
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.delete_rounded,
                            color: customColorScheme.onSurface3,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          const Divider(height: 1, thickness: 1),
          Container(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '토너 종류',
                      style: Theme.of(context).textTheme.labelLarge!.copyWith(
                            color: customColorScheme.onSurface3,
                          ),
                    ),
                    Text(
                      type.toString(),
                      style: Theme.of(context).textTheme.labelLarge!.copyWith(
                            color: customColorScheme.onSurface2,
                          ),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '참가비',
                      style: Theme.of(context).textTheme.labelLarge!.copyWith(
                            color: customColorScheme.onSurface3,
                          ),
                    ),
                    Text(
                      '$startFee만 chip',
                      style: Theme.of(context).textTheme.labelLarge!.copyWith(
                            color: customColorScheme.onSurface2,
                          ),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '엔트리',
                      style: Theme.of(context).textTheme.labelLarge!.copyWith(
                            color: customColorScheme.onSurface3,
                          ),
                    ),
                    Text(
                      '$minEntry ~ ${maxEntry == 0 ? '제한 없음' : maxEntry}',
                      style: Theme.of(context).textTheme.labelLarge!.copyWith(
                            color: customColorScheme.onSurface2,
                          ),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '프라이즈',
                      style: Theme.of(context).textTheme.labelLarge!.copyWith(
                            color: customColorScheme.onSurface3,
                          ),
                    ),
                    Text(
                      '$prize%',
                      style: Theme.of(context).textTheme.labelLarge!.copyWith(
                            color: customColorScheme.onSurface2,
                          ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
