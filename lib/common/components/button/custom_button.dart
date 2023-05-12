import 'package:flutter/material.dart';
import 'package:pokerspot_partner_app/common/theme/color.dart';

enum CustomButtonTheme {
  light('light'),
  primary('primary');

  const CustomButtonTheme(this.key);

  final String key;
}

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    this.onPressed,
    required this.text,
    required this.customButtonTheme,
  });

  final CustomButtonTheme customButtonTheme;
  final Function()? onPressed;
  final String text;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        foregroundColor: customButtonTheme == CustomButtonTheme.light
            ? Colors.grey.shade300
            : primaryColor,
        backgroundColor: customButtonTheme == CustomButtonTheme.light
            ? Colors.white
            : primaryColor,
        elevation: 0,
        side: BorderSide(color: Colors.grey.shade300),
        minimumSize: const Size(double.infinity, 50),
        disabledBackgroundColor: customButtonTheme == CustomButtonTheme.light
            ? Colors.grey.shade200
            : Colors.grey.shade400,
      ),
      child: Text(
        text,
        style: TextStyle(
          color: customButtonTheme == CustomButtonTheme.light
              ? Colors.black
              : Colors.white,
        ),
      ),
    );
  }
}
