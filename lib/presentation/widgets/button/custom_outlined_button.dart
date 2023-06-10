import 'package:flutter/material.dart';
import 'package:pokerspot_partner_app/common/theme/color.dart';

enum CustomOutlinedButtonTheme {
  primary('primary'),
  secondary('secondary'),
  neutral('neutral'),
  ;

  const CustomOutlinedButtonTheme(this.key);

  final String key;
}

class CustomOutlinedButton extends StatelessWidget {
  const CustomOutlinedButton({
    Key? key,
    this.theme = CustomOutlinedButtonTheme.neutral,
    required this.onPressed,
    this.leadingIcon,
    required this.text,
    this.trailingIcon,
  }) : super(key: key);

  final CustomOutlinedButtonTheme theme;
  final VoidCallback? onPressed;
  final IconData? leadingIcon;
  final String text;
  final IconData? trailingIcon;

  @override
  Widget build(BuildContext context) {
    setMainColor() {
      switch (theme) {
        case CustomOutlinedButtonTheme.primary:
          return lightColorScheme.primary;
        case CustomOutlinedButtonTheme.secondary:
          return lightColorScheme.secondary;
        default:
          return lightColorScheme.tertiary;
      }
    }

    setBorderColor() {
      switch (theme) {
        case CustomOutlinedButtonTheme.primary:
          return lightColorScheme.primary;
        case CustomOutlinedButtonTheme.secondary:
          return lightColorScheme.secondary;
        default:
          return customColorScheme.onSurface4;
      }
    }

    return OutlinedButton(
      onPressed: onPressed,
      style: OutlinedButton.styleFrom(
        foregroundColor: setMainColor(),
        side: BorderSide(color: setBorderColor()),
        minimumSize: const Size(0, 50),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              Icon(
                leadingIcon ?? leadingIcon,
                color: setMainColor(),
                size: 24,
              ),
              const SizedBox(width: 4),
            ],
          ),
          Text(
            text,
            style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                  color: setMainColor(),
                ),
          ),
          if (trailingIcon != null) ...[
            Row(
              children: [
                const SizedBox(width: 4),
                Icon(
                  trailingIcon,
                  color: setMainColor(),
                  size: 24,
                ),
              ],
            ),
          ],
        ],
      ),
    );
  }
}
