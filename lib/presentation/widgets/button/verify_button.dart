import 'package:flutter/material.dart';
import 'package:pokerspot_partner_app/common/theme/color.dart';

class VerifyButton extends StatelessWidget {
  final Function()? onPressed;
  final bool isVerified;
  final String label;

  const VerifyButton({
    super.key,
    this.onPressed,
    this.isVerified = false,
    this.label = '휴대폰 본인인증',
  });

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: isVerified ? lightColorScheme.primary : Colors.white,
        elevation: 0,
        side: BorderSide(color: lightColorScheme.primary),
        minimumSize: const Size(double.infinity, 50),
        disabledBackgroundColor: Colors.grey.shade200,
      ),
      child: Text(
        isVerified ? '인증이 완료되었습니다.' : label,
        style: isVerified
            ? Theme.of(context)
                .textTheme
                .labelLarge!
                .copyWith(color: lightColorScheme.onPrimary)
            : Theme.of(context)
                .textTheme
                .labelLarge!
                .copyWith(color: lightColorScheme.primary),
      ),
    );
  }
}
