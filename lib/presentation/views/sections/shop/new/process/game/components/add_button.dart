import 'package:flutter/material.dart';
import 'package:pokerspot_partner_app/common/constants/sizes.dart';
import 'package:pokerspot_partner_app/common/theme/color.dart';

class GameAddButton extends StatelessWidget {
  const GameAddButton({
    super.key,
    required this.onPressed,
  });

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton.icon(
      onPressed: onPressed,
      style: OutlinedButton.styleFrom(
        side: BorderSide(color: lightColorScheme.primary),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(defaultRadius),
          ),
        ),
        padding: const EdgeInsets.symmetric(vertical: padding16),
        backgroundColor: Colors.white,
      ),
      icon: const Icon(Icons.add),
      label: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(width: 4),
          Text(
            '추가하기',
            style: TextStyle(color: lightColorScheme.primary),
          ),
        ],
      ),
    );
  }
}
