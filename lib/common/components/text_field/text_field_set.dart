import 'package:flutter/material.dart';
import 'package:pokerspot_partner_app/common/components/text_field/text_field.dart';
import 'package:pokerspot_partner_app/common/constants/sizes.dart';
import 'package:pokerspot_partner_app/common/theme/typography.dart';

class CustomTextFieldSet extends StatelessWidget {
  const CustomTextFieldSet({
    Key? key,
    required this.inputLabel,
    required this.keyboardType,
    required this.isPassword,
    this.inputErrorText,
    required this.inputHintText,
    this.onEditingComplete,
    required this.onTextFieldChanged,
    this.maxLength,
    this.minLines,
    this.maxLines,
    this.textInputAction,
    this.captionText = '',
  }) : super(key: key);

  final String inputLabel;
  final String? inputErrorText;
  final String inputHintText;
  final TextInputType keyboardType;
  final bool isPassword;

  final VoidCallback? onEditingComplete;
  final Function(String value) onTextFieldChanged;
  final TextInputAction? textInputAction;

  final int? maxLength;
  final int? minLines;
  final int? maxLines;

  final String captionText;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          inputLabel,
          style: label.copyWith(
            color: const Color.fromARGB(255, 42, 50, 59),
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(height: padding10),
        CustomTextField(
          hint: inputHintText,
          errorText: inputErrorText,
          keyboardType: keyboardType.toString().isEmpty
              ? TextInputType.text
              : keyboardType,
          maxLength: maxLength,
          minLines: minLines,
          maxLines: maxLines,
          onEditingComplete: onEditingComplete,
          onTextFieldChanged: onTextFieldChanged,
          isPassword: isPassword,
          textInputAction: textInputAction,
        ),
        const SizedBox(height: padding10),
        if (captionText.isNotEmpty) ...[
          Padding(
            padding: const EdgeInsets.only(left: 12),
            child: Text(
              captionText,
              style: caption.copyWith(
                color: const Color.fromARGB(255, 102, 111, 123),
              ),
            ),
          ),
        ]
      ],
    );
  }
}
