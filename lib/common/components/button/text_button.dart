import 'package:flutter/material.dart';
import 'package:pokerspot_partner_app/common/theme/color.dart';
import 'package:pokerspot_partner_app/common/theme/typography.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({
    super.key,
    required this.text,
    required this.color,
    required this.onClick,
  });

  final String text;
  final Color color;
  final Function() onClick;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onClick,
      borderRadius: BorderRadius.circular(10),
      splashColor: primaryColor.withAlpha(30),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          // decoration: BoxDecoration(
          //   border: Border(bottom: BorderSide(color: color, width: 1)),
          // ),
          padding: const EdgeInsets.only(bottom: 1),
          child: Text(
            text,
            style: label.copyWith(color: color, fontWeight: FontWeight.w500),
          ),
        ),
      ),
    );
  }
}
