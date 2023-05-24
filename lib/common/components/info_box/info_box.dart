import 'package:flutter/material.dart';
import 'package:pokerspot_partner_app/common/constants/sizes.dart';
import 'package:pokerspot_partner_app/common/theme/typography.dart';

enum BoxColor {
  blue('blue'),
  ;

  const BoxColor(this.color);
  final String color;
}

class InfoBox extends StatelessWidget {
  const InfoBox({
    super.key,
    required this.boxColor,
    required this.text,
  });

  final BoxColor boxColor;
  final String text;

  setBackgroundColor(BoxColor boxColor) {
    switch (boxColor) {
      case BoxColor.blue:
        return const Color.fromRGBO(243, 248, 254, 1);
      default:
        return null;
    }
  }

  setOnBackgroundColor(BoxColor boxColor) {
    switch (boxColor) {
      case BoxColor.blue:
        return Colors.blue;
      default:
        return null;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(padding10),
      decoration: BoxDecoration(
        color: setBackgroundColor(boxColor),
        borderRadius: BorderRadius.circular(defaultRadius),
      ),
      child: Row(
        children: [
          Icon(
            Icons.info_outline_rounded,
            color: setOnBackgroundColor(boxColor),
            size: 16,
          ),
          const SizedBox(width: 6),
          Expanded(
            child: Text(
              text,
              style: caption.copyWith(
                fontWeight: FontWeight.w500,
                color: setOnBackgroundColor(boxColor),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
