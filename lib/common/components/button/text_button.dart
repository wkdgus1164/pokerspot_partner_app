import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pokerspot_partner_app/common/theme/color.dart';
import 'package:pokerspot_partner_app/common/theme/typography.dart';

enum TrailingIcon {
  none('none'),
  arrowRight('arrow_right'),
  ;

  const TrailingIcon(this.path);

  final String path;
}

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({
    super.key,
    required this.text,
    required this.color,
    required this.onClick,
    this.trailingIcon = TrailingIcon.none,
  });

  final String text;
  final Color color;
  final Function() onClick;
  final TrailingIcon trailingIcon;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onClick,
      borderRadius: BorderRadius.circular(10),
      splashColor: primaryColor.withAlpha(30),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              text,
              style: label.copyWith(color: color, fontWeight: FontWeight.w500),
            ),
            if (trailingIcon == TrailingIcon.arrowRight) ...[
              Icon(Icons.chevron_right_rounded, color: primaryColor, size: 20),
            ]
          ],
        ),
      ),
    );
  }
}
