import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    this.initText = '',
    required this.hint,
    this.keyboardType = TextInputType.text,
    this.obscureText = false,
    this.errorText,
    this.helperText,
    this.onTextFieldChanged,
    this.onEditingComplete,
    this.textInputAction,
    this.maxLength,
    this.enabled = true,
    this.onTap,
    this.readOnly = false,
    this.textAlign = TextAlign.left,
    this.controller,
  });

  final String initText;
  final String hint;
  final TextInputType keyboardType;
  final bool obscureText;
  final String? errorText;
  final String? helperText;
  final Function(String)? onTextFieldChanged;
  final Function()? onEditingComplete;
  final TextInputAction? textInputAction;
  final int? maxLength;
  final bool enabled;
  final GestureTapCallback? onTap;
  final bool readOnly;
  final TextAlign textAlign;
  final TextEditingController? controller;

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
      decoration: InputDecoration(
        errorText: errorText,
        hintText: hint,
        helperText: helperText,
        enabled: enabled,
      ),
      onChanged: onTextFieldChanged,
      onEditingComplete: onEditingComplete,
      maxLength: maxLength,
      maxLines: 1,
      textAlign: textAlign,
      onTap: onTap,
      readOnly: readOnly,
      keyboardType: keyboardType,
      textInputAction: textInputAction,
      obscureText: obscureText,
    );
  }
}
