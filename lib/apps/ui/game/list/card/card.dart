import 'package:flutter/material.dart';
import 'package:pokerspot_partner_app/apps/global/constants/enums.dart';
import 'package:pokerspot_partner_app/apps/global/global.dart';
import 'package:pokerspot_partner_app/apps/ui/game/list/card/card_information.dart';
import 'package:pokerspot_partner_app/apps/ui/game/list/card/card_tag.dart';
import 'package:pokerspot_partner_app/apps/ui/game/list/card/toggle.dart';

class GameCard extends StatelessWidget {
  const GameCard({
    super.key,
    required this.gameTitle,
    required this.buyIn,
    required this.entry,
    required this.blup,
    required this.prize,
    required this.duration,
    required this.isRealtime,
    required this.isNextGame,
    required this.isFirstGame,
    required this.gameType,
    required this.isDailyGame,
    this.toggleRealtimeSwitch,
    this.toggleNextGameSwitch,
    required this.handleUpdateButtonClick,
  });

  final String gameTitle;
  final int buyIn;
  final int entry;
  final int blup;
  final int prize;
  final int duration;
  final bool isRealtime;
  final bool isNextGame;
  final bool isFirstGame;
  final GameType gameType;
  final bool isDailyGame;
  final Function(bool)? toggleRealtimeSwitch;
  final Function(bool)? toggleNextGameSwitch;
  final Function() handleUpdateButtonClick;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: colorGrey90),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(
              top: 10,
              left: 16,
              right: 0,
              bottom: 10,
            ),
            decoration: const BoxDecoration(
              border: BorderDirectional(
                bottom: BorderSide(color: colorGrey90),
              ),
            ),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        gameTitle,
                        style: textTheme.titleMedium!.copyWith(
                          fontWeight: FontWeight.bold,
                          color: colorGrey20,
                        ),
                      ),
                      const SizedBox(height: 4),
                      CardTag(
                        isFirstGame: isFirstGame,
                        gameType: gameType,
                        isDailyGame: isDailyGame,
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 16),
                IconButton(
                  onPressed: handleUpdateButtonClick,
                  icon: const Icon(
                    Icons.edit_rounded,
                    color: colorGrey60,
                  ),
                ),
              ],
            ),
          ),
          const CardInformation(
            buyIn: 5,
            entry: 25,
            blup: 7,
            prize: 80,
            duration: 15,
          ),
          const Divider(),
          CardToggle(
            isRealtime: isRealtime,
            isNextGame: isNextGame,
            toggleRealtimeSwitch: toggleRealtimeSwitch,
            toggleNextGameSwitch: toggleNextGameSwitch,
          ),
        ],
      ),
    );
  }
}
