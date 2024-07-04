import 'package:flutter/cupertino.dart';
import 'package:pokerspot_partner_app/apps/global/global.dart';

class GameToggle extends StatelessWidget {
  const GameToggle({
    super.key,
    required this.isRealtime,
    required this.isNextGame,
    required this.toggleRealtimeSwitch,
    required this.toggleNextGameSwitch,
  });

  final bool isRealtime;
  final bool isNextGame;

  final Function(bool)? toggleRealtimeSwitch;
  final Function(bool)? toggleNextGameSwitch;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 4,
          ),
          child: Row(
            children: [
              Text(
                '실시간',
                style: textTheme.titleMedium!.copyWith(
                  fontWeight: FontWeight.normal,
                  color: colorGrey60,
                ),
              ),
              const Spacer(),
              Transform.scale(
                scale: 0.8,
                alignment: Alignment.centerRight,
                child: CupertinoSwitch(
                  value: isRealtime,
                  onChanged: toggleRealtimeSwitch,
                  activeColor: colorBrand50,
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 4,
          ),
          child: Row(
            children: [
              Text(
                '다음 게임 진행 예정',
                style: textTheme.titleMedium!.copyWith(
                  fontWeight: FontWeight.normal,
                  color: colorGrey60,
                ),
              ),
              const Spacer(),
              Transform.scale(
                scale: 0.8,
                alignment: Alignment.centerRight,
                child: CupertinoSwitch(
                  value: isNextGame,
                  onChanged: toggleNextGameSwitch,
                  activeColor: colorBrand50,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
