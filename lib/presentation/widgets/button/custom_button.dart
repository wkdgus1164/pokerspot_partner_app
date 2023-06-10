import 'package:flutter/material.dart';
import 'package:pokerspot_partner_app/common/theme/color.dart';

enum CustomFilledButtonTheme {
  primary('primary'),
  secondary('secondary'),
  ;

  const CustomFilledButtonTheme(this.key);

  final String key;
}

class CustomFilledButton extends StatelessWidget {
  const CustomFilledButton({
    super.key,
    this.onPressed,
    required this.text,
    required this.theme,
  });

  final CustomFilledButtonTheme theme;
  final Function()? onPressed;
  final String text;

  @override
  Widget build(BuildContext context) {
    setMainColor() {
      switch (theme) {
        case CustomFilledButtonTheme.primary:
          return lightColorScheme.onPrimary;
        case CustomFilledButtonTheme.secondary:
          return lightColorScheme.onSecondary;
        default:
          return lightColorScheme.onSecondary;
      }
    }

    setBackgroundColor() {
      switch (theme) {
        case CustomFilledButtonTheme.primary:
          return lightColorScheme.primary;
        case CustomFilledButtonTheme.secondary:
          return lightColorScheme.secondary;
        default:
          return lightColorScheme.secondary;
      }
    }

    return FilledButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        foregroundColor: setMainColor(),
        backgroundColor: setBackgroundColor(),
        elevation: 0,
        side: const BorderSide(color: Colors.transparent),
        minimumSize: const Size(double.infinity, 50),
      ),
      child: Text(
        text,
        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
              color: setMainColor(),
            ),
      ),
    );
  }
}
