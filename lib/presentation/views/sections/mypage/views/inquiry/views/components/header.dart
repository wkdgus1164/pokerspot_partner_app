// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:pokerspot_partner_app/common/constants/sizes.dart';
import 'package:pokerspot_partner_app/common/theme/color.dart';

class InquiryHeader extends StatelessWidget {
  const InquiryHeader({
    super.key,
    required this.createdAt,
    required this.title,
    required this.isExpand,
    required this.status,
  });

  final String createdAt;
  final String status;
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
                  style: Theme.of(context).textTheme.titleMedium!.copyWith(
                        color: customColorScheme.onSurface1,
                      ),
                ),
                const SizedBox(height: 4),
                Text(
                  '$status · $createdAt',
                  style: Theme.of(context).textTheme.labelMedium!.copyWith(
                        color: customColorScheme.onSurface4,
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
