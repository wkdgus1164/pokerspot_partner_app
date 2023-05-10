import 'package:flutter/material.dart';
import 'package:pokerspot_partner_app/common/constants/sizes.dart';
import 'package:pokerspot_partner_app/common/theme/color.dart';
import 'package:pokerspot_partner_app/common/theme/typography.dart';

class IntroStartButton extends StatelessWidget {
  const IntroStartButton({
    super.key,
    this.onPressed,
    required this.text,
  });

  final Function()? onPressed;
  final String text;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: GestureDetector(
        onTap: onPressed,
        child: Container(
          width: double.infinity,
          color: primaryColor,
          padding: const EdgeInsets.only(
            top: padding10,
            bottom: padding32,
          ),
          child: Text(
            '시작하기',
            style: bodySmall.copyWith(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
