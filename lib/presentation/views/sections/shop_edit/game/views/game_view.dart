import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:pokerspot_partner_app/data/models/store/mtt_game.dart';
import 'package:pokerspot_partner_app/presentation/views/sections/shop_edit/game/views/components/game_item.dart';
import 'package:provider/provider.dart';

import '../../../../../providers/store_provider.dart';
import '../../../../../widgets/dialogs/selection_dialog/selection_dialog_utils.dart';
import '../../../shop/new/process/game/dialog/game_dialog.dart';

class ShopEditGameView extends StatefulWidget {
  const ShopEditGameView({super.key});

  @override
  State<ShopEditGameView> createState() => _ShopEditGameViewState();
}

class _ShopEditGameViewState extends State<ShopEditGameView> {
  void _updateGame(
      {required int index,
      required MttGameModel game,
      required StoreProvider provider}) {
    showDialog(
      context: context,
      builder: (_) => Theme(
        data: Theme.of(context).copyWith(
          dialogBackgroundColor: Colors.white,
        ),
        child: Dialog(
          child: GameDialog(
            game: game,
            isEdit: true,
            onConfirm: (game) async {
              await provider.updateGame(index: index, game: game);
              if (mounted) Navigator.pop(context);
            },
          ),
        ),
      ),
    );
  }

  String _title(MttGameModel game) {
    switch (game.type) {
      case TonerType.daily:
        return '${game.entryPrice ~/ 10000}만 데일리 토너먼트';
      case TonerType.seed:
        return '${game.entryPrice ~/ 10000}만 ${game.targetMttName.replaceAll('토너먼트', '')} 시드권 토너먼트';
      case TonerType.gtd:
        return '${game.gtdMinReward ~/ 10000}만 GTD 토너먼트';
      default:
        return '알수없음';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<StoreProvider>(builder: (_, provider, __) {
      return Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              ...provider.games.mapIndexed(
                (index, e) => ShopEditGameItem(
                  name: e.name.isNotEmpty ? e.name : _title(e),
                  type: e.type,
                  startFee: e.entryPrice,
                  minEntry: e.entryMin,
                  maxEntry: e.entryMax ?? 0,
                  prize: e.prize,
                  isEveryday: e.isDaily,
                  targetToner: e.targetMttName,
                  onEditButtonPressed: () {
                    _updateGame(game: e, index: index, provider: provider);
                  },
                  onDeleteButtonPressed: () async {
                    showSelectionDialog(
                        context: context,
                        title: '게임 삭제',
                        content: '${e.name}를 삭제하시겠습니까?',
                        onConfirm: () async {
                          await provider.deleteGame(index);
                        });
                  },
                ),
              ),
              const SizedBox(height: 80),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () async {
            await provider.addGame();
          },
          child: const Icon(Icons.add_rounded),
        ),
      );
    });
  }
}
