import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pokerspot_partner_app/common/theme/typography.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
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
  });

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

  InputDecoration textFieldDecoration() {
    return InputDecoration(
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(width: 1, color: Colors.grey.shade300),
        borderRadius: BorderRadius.circular(4),
      ),
      border: OutlineInputBorder(
        borderSide: BorderSide(width: 1, color: Colors.grey.shade300),
        borderRadius: BorderRadius.circular(4),
      ),
      hintText: hint,
      hintStyle: bodyMedium.copyWith(color: Colors.grey.shade400),
      errorText: errorText,
      helperText: helperText,
    );
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: bodyMedium.copyWith(color: Colors.black),
      decoration: textFieldDecoration(),
      onChanged: onTextFieldChanged,
      onEditingComplete: onEditingComplete,
      maxLength: maxLength,
      minLines: minLines,
      maxLines: maxLines,
      keyboardType:
          keyboardType.toString().isEmpty ? TextInputType.text : keyboardType,
      textInputAction: textInputAction,
      obscureText: isPassword ? true : false,
      inputFormatters: inputFormatters,
    );
  }
}
