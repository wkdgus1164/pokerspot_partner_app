import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pokerspot_partner_app/common/theme/color.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    this.initText = '',
    required this.hint,
    this.keyboardType = TextInputType.text,
    this.isPassword = false,
    this.errorText,
    this.helperText,
    this.onTextFieldChanged,
    this.onEditingComplete,
    this.inputFormatters,
    this.textInputAction,
    this.maxLength,
    this.minLines,
    this.maxLines,
    this.enabled = true,
    this.onTap,
    this.readOnly = false,
    this.textAlign = TextAlign.left,
    this.controller,
  });

  final String initText;
  final String hint;
  final TextInputType keyboardType;
  final bool isPassword;
  final String? errorText;
  final String? helperText;
  final Function(String)? onTextFieldChanged;
  final Function()? onEditingComplete;
  final List<TextInputFormatter>? inputFormatters;
  final TextInputAction? textInputAction;
  final int? maxLength;
  final int? minLines;
  final int? maxLines;
  final bool enabled;
  final GestureTapCallback? onTap;
  final bool readOnly;
  final TextAlign textAlign;
  final TextEditingController? controller;

  InputDecoration textFieldDecoration(BuildContext context) {
    return InputDecoration(
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(
          width: 1,
          color: lightColorScheme.outline,
        ),
        borderRadius: BorderRadius.circular(4),
      ),
      border: OutlineInputBorder(
        borderSide: BorderSide(width: 1, color: lightColorScheme.outline),
        borderRadius: BorderRadius.circular(4),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: lightColorScheme.primary.withAlpha(100),
        ),
      ),
      hintText: hint,
      hintStyle: Theme.of(context)
          .textTheme
          .bodyMedium!
          .copyWith(color: customColorScheme.onSurface4),
      errorText: errorText,
      helperText: helperText,
      enabled: enabled,
    );
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller ??
          (initText.isNotEmpty
              ? (TextEditingController()
                ..text = initText
                ..selection = TextSelection.collapsed(offset: initText.length))
              : null),
      style: Theme.of(context).textTheme.bodyMedium,
      decoration: textFieldDecoration(context),
      onChanged: onTextFieldChanged,
      onEditingComplete: onEditingComplete,
      maxLength: maxLength,
      minLines: minLines,
      maxLines: maxLines,
      textAlign: textAlign,
      onTap: onTap,
      readOnly: readOnly,
      keyboardType:
          keyboardType.toString().isEmpty ? TextInputType.text : keyboardType,
      textInputAction: textInputAction,
      obscureText: isPassword ? true : false,
      inputFormatters: inputFormatters,
    );
  }
}
