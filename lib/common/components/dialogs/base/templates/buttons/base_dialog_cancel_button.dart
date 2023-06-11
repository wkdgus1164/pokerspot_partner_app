import 'package:flutter/material.dart';
import 'package:pokerspot_partner_app/presentation/widgets/button/custom_outlined_button.dart';

class BaseDialogCancelButton extends StatelessWidget {
  final String text;
  final VoidCallback? onCancel;

  const BaseDialogCancelButton({
    super.key,
    this.text = "취소",
    this.onCancel,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: CustomOutlinedButton(
        onPressed: onCancel,
        text: text,
      ),
    );
  }
}
