import 'package:flutter/material.dart';
import 'package:pokerspot_partner_app/common/theme/color.dart';

class GameDialogEveryday extends StatelessWidget {
  const GameDialogEveryday({
    super.key,
    required this.isSwitchOn,
    this.onSwitchPressed,
  });

  final bool isSwitchOn;
  final Function(bool)? onSwitchPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 40,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            '매일 진행',
            style: Theme.of(context).textTheme.labelMedium!.copyWith(
                  color: customColorScheme.onSurface2,
                ),
          ),
          const SizedBox(width: 10),
          Transform.scale(
            scale: 0.6,
            child: Switch.adaptive(
              value: isSwitchOn,
              onChanged: onSwitchPressed,
            ),
          ),
        ],
      ),
    );
  }
}
