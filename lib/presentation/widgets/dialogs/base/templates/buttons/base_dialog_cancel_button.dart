import 'package:flutter/material.dart';
import 'package:pokerspot_partner_app/presentation/widgets/button/text_button.dart';

class BaseDialogCancelButton extends StatelessWidget {
  final String text;
  final Function() onCancel;

  const BaseDialogCancelButton({
    super.key,
    this.text = "취소",
    required this.onCancel,
  });

  @override
  Widget build(BuildContext context) {
    return CustomTextButton(
      onClick: onCancel,
      text: text,
      theme: CustomTextButtonTheme.black,
    );
  }
}
