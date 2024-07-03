import 'package:flutter/material.dart';
import 'package:pokerspot_partner_app/apps/global/global.dart';

class EmptyWithButton extends StatelessWidget {
  const EmptyWithButton({
    super.key,
    required this.icon,
    required this.message,
    required this.buttonText,
    required this.handleButtonClick,
  });

  final IconData icon;
  final String message;
  final String buttonText;
  final Function() handleButtonClick;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon(icon, color: colorGrey70, size: 44),
        const SizedBox(height: 32),
        SizedBox(
          width: double.infinity,
          child: Text(
            message,
            textAlign: TextAlign.center,
            style: textTheme.labelLarge!.copyWith(
              color: colorGrey70,
            ),
          ),
        ),
        const SizedBox(height: 32),
        FilledButton.tonal(
          onPressed: handleButtonClick,
          child: Text(buttonText),
        ),
      ],
    );
  }
}
