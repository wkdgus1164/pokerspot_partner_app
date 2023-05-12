import 'package:flutter/material.dart';
import 'package:pokerspot_partner_app/common/constants/sizes.dart';
import 'package:pokerspot_partner_app/common/theme/color.dart';
import 'package:pokerspot_partner_app/common/theme/typography.dart';

class PhoneAuthButton extends StatelessWidget {
  const PhoneAuthButton({
    super.key,
    this.onPressed,
    required this.text,
  });

  final Function()? onPressed;
  final String text;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
        side: BorderSide(color: Colors.grey.shade200),
        minimumSize: const Size(double.infinity, 50),
        disabledBackgroundColor: Colors.grey.shade200,
      ),
      child: const Text('휴대폰 본인인증'),
    );
  }
}
