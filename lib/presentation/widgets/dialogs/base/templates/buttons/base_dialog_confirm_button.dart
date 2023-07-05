import 'package:flutter/material.dart';
import 'package:pokerspot_partner_app/presentation/widgets/button/text_button.dart';

class BaseDialogConfirmButton extends StatelessWidget {
  final String text;
  final Function() onConfirm;

  const BaseDialogConfirmButton({
    super.key,
    this.text = "확인",
    required this.onConfirm,
  });

  @override
  Widget build(BuildContext context) {
    return CustomTextButton(
      onClick: onConfirm,
      text: text,
      theme: CustomTextButtonTheme.primary,
    );
  }
}
