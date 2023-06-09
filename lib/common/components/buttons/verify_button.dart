import 'package:flutter/material.dart';
import 'package:pokerspot_partner_app/common/theme/color.dart';

class VerifyButton extends StatelessWidget {
  final Function()? onPressed;

  const VerifyButton({
    super.key,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        foregroundColor: Colors.grey.shade300,
        backgroundColor: Colors.white,
        elevation: 0,
        side: BorderSide(color: Colors.grey.shade300),
        minimumSize: const Size(double.infinity, 50),
        disabledBackgroundColor: Colors.grey.shade200,
      ),
      child: Text(
        '휴대폰 본인인증',
        style: TextStyle(color: greyVariant1),
      ),
    );
  }
}
