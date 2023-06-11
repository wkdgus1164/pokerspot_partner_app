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
        foregroundColor: Colors.grey.shade300,
        backgroundColor: Colors.white,
        elevation: 0,
        side: BorderSide(color: Colors.grey.shade300),
        minimumSize: const Size(double.infinity, 50),
        disabledBackgroundColor: Colors.grey.shade200,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const SizedBox(width: 24),
          Text(
            isVerified ? '인증이 완료되였습니다.' : label,
            style: isVerified
                ? Theme.of(context)
                    .textTheme
                    .bodyMedium!
                    .copyWith(color: lightColorScheme.primary)
                : Theme.of(context)
                    .textTheme
                    .bodyMedium!
                    .copyWith(color: customColorScheme.onSurface1),
          ),
          Icon(
            isVerified ? Icons.check : null,
            color: lightColorScheme.primary,
          ),
        ],
      ),
    );
  }
}
