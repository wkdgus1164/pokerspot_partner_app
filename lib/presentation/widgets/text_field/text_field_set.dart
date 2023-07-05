import 'package:flutter/material.dart';
import 'package:pokerspot_partner_app/common/constants/sizes.dart';
import 'package:pokerspot_partner_app/common/theme/color.dart';
import 'package:pokerspot_partner_app/presentation/widgets/text_field/text_field.dart';

class CustomTextFieldSet extends StatelessWidget {
  const CustomTextFieldSet({
    Key? key,
    this.initText = '',
    required this.inputLabel,
    this.keyboardType = TextInputType.text,
    this.isPassword = false,
    this.inputErrorText,
    required this.inputHintText,
    this.onEditingComplete,
    required this.onTextFieldChanged,
    this.maxLength,
    this.minLines,
    this.maxLines,
    this.textInputAction,
    this.captionText = '',
    this.enabled = true,
    this.controller,
  }) : super(key: key);

  final String initText;
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

  final bool enabled;
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          inputLabel,
          style: Theme.of(context)
              .textTheme
              .bodyMedium!
              .copyWith(color: customColorScheme.onSurface1),
        ),
        const SizedBox(height: padding10),
        if (captionText.isNotEmpty) ...[
          Text(
            captionText,
            style: Theme.of(context)
                .textTheme
                .labelMedium!
                .copyWith(color: customColorScheme.onSurface3),
          ),
        ],
        const SizedBox(height: padding10),
        CustomTextField(
          controller: controller,
          initText: initText,
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
          enabled: enabled,
        ),
      ],
    );
  }
}
