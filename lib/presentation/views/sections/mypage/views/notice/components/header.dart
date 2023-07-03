// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:pokerspot_partner_app/common/constants/sizes.dart';
import 'package:pokerspot_partner_app/common/theme/color.dart';

class MoreNoticeHeader extends StatelessWidget {
  const MoreNoticeHeader({
    super.key,
    required this.createdAt,
    required this.title,
    required this.isExpand,
  });

  final String createdAt;
  final String title;
  final bool isExpand;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(padding16),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  title,
                  style: Theme.of(context).textTheme.titleSmall,
                ),
                const SizedBox(height: 4),
                Text(
                  createdAt,
                  style: Theme.of(context).textTheme.labelMedium!.copyWith(
                        color: customColorScheme.onSurface3,
                      ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: padding10),
            child: _ArrowIcon(),
          ),
        ],
      ),
    );
  }

  Widget _ArrowIcon() {
    if (isExpand) {
      return Icon(
        Icons.keyboard_arrow_up_rounded,
        color: customColorScheme.onSurface4,
      );
    }

    return Icon(
      Icons.keyboard_arrow_down_rounded,
      color: customColorScheme.onSurface4,
    );
  }
}
