import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pokerspot_partner_app/apps/ui/game_create/daily/entry/entry_data.dart';

class GameCreateDailyEntryView extends StatefulHookConsumerWidget {
  const GameCreateDailyEntryView({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _GameCreateDailyEntryViewState();
}

class _GameCreateDailyEntryViewState
    extends ConsumerState<GameCreateDailyEntryView> {
  final List<String> entryList = List.generate(
    30,
    (index) => '${index + 1}만',
  );

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: entryList
            .map(
              (entry) => ListTile(
                title: Text(entry),
                onTap: () {
                  final int entryValue = int.parse(
                    entry.split('만').first,
                  );

                  ref
                      .read(gameCreateDailyEntryDataProvider.notifier)
                      .setEntry(entryValue);

                  context.pop();
                },
              ),
            )
            .toList(),
      ),
    );
  }
}
