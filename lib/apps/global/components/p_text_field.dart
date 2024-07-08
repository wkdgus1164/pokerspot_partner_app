import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pokerspot_partner_app/apps/global/global.dart';

class PTextField extends StatelessWidget {
  const PTextField({
    super.key,
    required this.labelText,
    required this.hintText,
    this.handleIconClick,
    required this.handleChange,
    this.icon,
    this.inputFormatters,
    this.obscureText = false,
    this.keyboardType = TextInputType.text,
    this.autofocus = false,
    this.controller,
    this.endText,
  });

  final String labelText;
  final String hintText;
  final Function()? handleIconClick;
  final Function(String?) handleChange;
  final IconData? icon;
  final List<TextInputFormatter>? inputFormatters;
  final bool obscureText;
  final TextInputType keyboardType;
  final bool autofocus;
  final TextEditingController? controller;
  final String? endText;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(
          Radius.circular(16),
        ),
        border: Border.all(color: colorGrey90),
      ),
      padding: const EdgeInsets.only(
        left: 16,
        right: 16,
        top: 12,
        bottom: 0,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            labelText,
            style: Theme.of(context).textTheme.bodySmall!.copyWith(
                  color: colorGrey20,
                ),
          ),
          Row(
            children: [
              Expanded(
                child: TextField(
                  controller: controller,
                  onChanged: handleChange,
                  decoration: InputDecoration(
                    hintText: hintText,
                  ),
                  inputFormatters: inputFormatters,
                  obscureText: obscureText,
                  keyboardType: keyboardType,
                  autofocus: autofocus,
                ),
              ),
              if (icon != null) ...[
                const SizedBox(width: 8),
                GestureDetector(
                  onTap: handleIconClick,
                  child: Icon(
                    icon!,
                    color: colorGrey80,
                  ),
                ),
              ],
              if (endText != null) ...[
                const SizedBox(width: 8),
                Text(
                  endText!,
                  style: const TextStyle(
                    color: colorGrey70,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ],
            ],
          ),
        ],
      ),
    );
  }
}
