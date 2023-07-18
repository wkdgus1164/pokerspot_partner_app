import 'package:flutter/material.dart';
import 'package:pokerspot_partner_app/common/theme/color.dart';

class CustomCheckbox extends StatelessWidget {
  const CustomCheckbox({
    super.key,
    this.value = false,
    this.onChanged,
    this.size = 20,
  });

  final bool value;
  final Function()? onChanged;
  final double size;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onChanged,
      child: Container(
        width: size,
        height: size,
        decoration: BoxDecoration(
          color: value ? lightColorScheme.primary : Colors.grey.shade300,
          borderRadius: BorderRadius.circular(2),
        ),
        child: Icon(Icons.check_rounded, color: Colors.white, size: size - 4),
      ),
    );
  }
}
