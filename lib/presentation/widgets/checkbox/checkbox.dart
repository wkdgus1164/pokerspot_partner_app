import 'package:flutter/material.dart';
import 'package:pokerspot_partner_app/common/theme/color.dart';

class CustomCheckbox extends StatelessWidget {
  const CustomCheckbox({super.key, this.value = false, this.onChanged});

  final bool value;
  final Function()? onChanged;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onChanged,
      child: Container(
        width: 20,
        height: 20,
        decoration: BoxDecoration(
          color: value ? primaryColor : Colors.grey.shade300,
          borderRadius: BorderRadius.circular(2),
        ),
        child: const Icon(Icons.check_rounded, color: Colors.white, size: 16),
      ),
    );
  }
}
