import 'package:flutter/material.dart';
import 'package:pokerspot_partner_app/common/theme/color.dart';
import 'package:pokerspot_partner_app/common/theme/typography.dart';

class CustomTextFieldWithDeleteIcon extends StatelessWidget {
  const CustomTextFieldWithDeleteIcon({
    Key? key,
    required this.hintText,
    this.onSuffixIconPressed,
    required this.textInputType,
    this.onChanged,
  }) : super(key: key);

  final String hintText;
  final VoidCallback? onSuffixIconPressed;
  final TextInputType? textInputType;
  final ValueChanged<String>? onChanged;

  @override
  Widget build(BuildContext context) {
    InputDecoration decoration = InputDecoration(
      filled: true,
      fillColor: Colors.white,
      border: const OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(4)),
      ),
      hintText: hintText,
      hintStyle: bodySmall.copyWith(color: Colors.grey.shade400),
      suffixIcon: IconButton(
        icon: Icon(Icons.cancel, color: Colors.grey.shade400),
        onPressed: onSuffixIconPressed,
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.grey.shade300, width: 1),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: primaryColor.withAlpha(100)),
      ),
    );

    return TextFormField(
      decoration: decoration,
      keyboardType: TextInputType.text,
      obscureText:
          textInputType == TextInputType.visiblePassword ? true : false,
      maxLength: 12,
      maxLines: 1,
      onChanged: onChanged,
      cursorColor: primaryColor,
      buildCounter: (
        context, {
        required currentLength,
        required isFocused,
        maxLength,
      }) =>
          null,
    );
  }
}
