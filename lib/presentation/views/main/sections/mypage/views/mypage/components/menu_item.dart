import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pokerspot_partner_app/common/constants/sizes.dart';
import 'package:pokerspot_partner_app/common/theme/color.dart';

class MypageMenuItem extends StatelessWidget {
  const MypageMenuItem({
    super.key,
    required this.text,
    required this.icon,
    required this.onTap,
  });

  final String text;
  final String icon;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(padding24),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SvgPicture.asset(icon),
                      const SizedBox(width: padding16),
                      Text(
                        text,
                        style: Theme.of(context)
                            .textTheme
                            .bodyMedium!
                            .copyWith(color: customColorScheme.onSurface2),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(padding24),
                child: Icon(
                  Icons.chevron_right_rounded,
                  color: customColorScheme.onSurface4,
                ),
              ),
            ],
          ),
          Divider(
            color: lightColorScheme.outline,
            height: 1,
            thickness: 1,
          ),
        ],
      ),
    );
  }
}
