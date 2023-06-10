import 'package:flutter/material.dart';
import 'package:pokerspot_partner_app/common/theme/color.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
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
        borderRadius: BorderRadius.all(
          Radius.circular(4),
        ),
      ),
      hintText: hintText,
      hintStyle: Theme.of(context).textTheme.bodyLarge!.copyWith(
            color: customColorScheme.onSurface4,
          ),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: lightColorScheme.outline,
          width: 1,
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: lightColorScheme.primary.withAlpha(100),
        ),
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
      cursorColor: lightColorScheme.primary.withOpacity(0.3),
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
