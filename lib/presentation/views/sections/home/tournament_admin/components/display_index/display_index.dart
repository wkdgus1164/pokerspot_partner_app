import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:pokerspot_partner_app/common/constants/sizes.dart';
import 'package:pokerspot_partner_app/common/theme/color.dart';
import 'package:pokerspot_partner_app/presentation/widgets/info_box/info_box.dart';
import 'package:provider/provider.dart';

import '../../../../../../providers/tournament_provider.dart';
import 'item.dart';

class TournamentAdminDisplayIndex extends StatelessWidget {
  const TournamentAdminDisplayIndex({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<TournamentProvider>(context);
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
        ReorderableListView(
          shrinkWrap: true,
          children: provider.games
              .sortedByCompare(
                  (game) => game.priority, (a, b) => a?.compareTo(b ?? 0) ?? 0)
              .mapIndexed((index, e) => Padding(
                    key: Key(e.uid),
                    padding: const EdgeInsets.only(bottom: 16),
                    child: DisplayIndexItem(
                      title: e.name,
                      type: e.type.kr,
                      isRealtime: e.isRealTime,
                      isToday: e.isToday,
                      index: e.priority ?? index + 1,
                    ),
                  ))
              .toList(),
          onReorder: (int oldIndex, int newIndex) {
            if (oldIndex < newIndex) {
              newIndex -= 1;
            }
            provider.updateGameDisplayIndex(
              oldIndex: oldIndex,
              newIndex: newIndex,
            );
          },
        ),
      ],
    );
  }
}
