import 'package:flutter/material.dart';
import 'package:pokerspot_partner_app/apps/global/constants/enums.dart';

class GameTag extends StatelessWidget {
  const GameTag({
    super.key,
    required this.isFirstGame,
    required this.gameType,
    required this.isDailyGame,
  });

  final bool isFirstGame;
  final GameType gameType;
  final bool isDailyGame;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 12,
      children: [
        if (isFirstGame) ...[
          _buildTag(
            context: context,
            color: Colors.blue,
            title: '첫 게임',
          ),
        ],
        _buildTag(
          context: context,
          color: Colors.red,
          title: gameType.kr,
        ),
        if (isDailyGame) ...[
          _buildTag(
            context: context,
            color: Colors.green,
            title: '매일 진행',
          ),
        ],
      ],
    );
  }

  Container _buildTag({
    required BuildContext context,
    required MaterialColor color,
    required String title,
  }) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 8,
        vertical: 4,
      ),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(
          Radius.circular(4),
        ),
        color: color.shade50,
      ),
      child: Text(
        title,
        style: Theme.of(context).textTheme.labelSmall!.copyWith(
              color: color.shade700,
            ),
      ),
    );
  }
}
