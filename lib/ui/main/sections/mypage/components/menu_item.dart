import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pokerspot_partner_app/common/constants/sizes.dart';
import 'package:pokerspot_partner_app/common/theme/color.dart';
import 'package:pokerspot_partner_app/common/theme/typography.dart';

class MypageMenuItem extends StatelessWidget {
  const MypageMenuItem({
    super.key,
    required this.text,
    required this.icon,
  });

  final String text;
  final String icon;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        padding: const EdgeInsets.only(
          left: padding16,
          right: padding16,
          top: padding24,
        ),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SvgPicture.asset(icon),
                      const SizedBox(width: padding10),
                      Text(text, style: bodySmall.copyWith(color: textColor)),
                    ],
                  ),
                ),
                Icon(Icons.chevron_right_rounded, color: greyVariant3),
              ],
            ),
            const SizedBox(height: padding24),
            Divider(color: borderColor, height: 1, thickness: 1),
          ],
        ),
      ),
    );
  }
}
