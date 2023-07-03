import 'package:flutter/material.dart';
import 'package:pokerspot_partner_app/common/theme/color.dart';

enum CustomTextButtonTheme {
  primary('primary'),
  black('black'),
  ;

  const CustomTextButtonTheme(this.key);
  final String key;
}

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({
    super.key,
    required this.text,
    this.theme = CustomTextButtonTheme.black,
    required this.onClick,
    this.trailingIcon,
  });

  final String text;
  final CustomTextButtonTheme theme;
  final Function() onClick;
  final IconData? trailingIcon;

  @override
  Widget build(BuildContext context) {
    setMainColor() {
      switch (theme) {
        case CustomTextButtonTheme.primary:
          return lightColorScheme.primary;
        case CustomTextButtonTheme.black:
          return lightColorScheme.secondary;
        default:
          return Colors.black;
      }
    }

    setRippleColor() {
      switch (theme) {
        case CustomTextButtonTheme.primary:
          return lightColorScheme.primary.withAlpha(10);
        case CustomTextButtonTheme.black:
        default:
          return Colors.black.withAlpha(10);
      }
    }

    return InkWell(
      onTap: onClick,
      borderRadius: BorderRadius.circular(8),
      splashColor: setRippleColor(),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 8,
          vertical: 6,
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              text,
              style: Theme.of(context).textTheme.labelLarge!.copyWith(
                    color: setMainColor(),
                    fontWeight: FontWeight.w500,
                  ),
            ),
            if (trailingIcon != null) ...[
              Icon(
                trailingIcon,
                color: setMainColor().withOpacity(0.6),
                size: 20,
              ),
            ],
          ],
        ),
      ),
    );
  }
}
