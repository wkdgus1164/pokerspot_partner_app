import 'package:flutter/material.dart';
import 'package:pokerspot_partner_app/presentation/widgets/button/custom_button.dart';

class BaseDialogConfirmButton extends StatelessWidget {
  final String text;
  final VoidCallback? onConfirm;

  const BaseDialogConfirmButton({
    super.key,
    this.text = "확인",
    this.onConfirm,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: CustomFilledButton(
        text: text,
        theme: CustomFilledButtonTheme.primary,
        onPressed: onConfirm,
      ),
    );
  }
}
