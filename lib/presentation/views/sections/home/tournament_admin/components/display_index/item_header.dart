import 'package:flutter/material.dart';
import 'package:pokerspot_partner_app/common/constants/sizes.dart';
import 'package:pokerspot_partner_app/common/theme/color.dart';

class DisplayIndexItemHeader extends StatelessWidget {
  const DisplayIndexItemHeader({
    super.key,
    required this.text,
    required this.index,
  });

  final String text;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 6,
            vertical: 4,
          ),
          decoration: ShapeDecoration(
            color: lightColorScheme.primary,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(2),
            ),
          ),
          child: Row(
            children: [
              Text(
                text,
                style: Theme.of(context).textTheme.labelMedium!.copyWith(
                      color: lightColorScheme.onPrimary,
                    ),
              ),
            ],
          ),
        ),
        const SizedBox(width: padding10),
        Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 6,
            vertical: 4,
          ),
          decoration: ShapeDecoration(
            shape: RoundedRectangleBorder(
              side: BorderSide(color: lightColorScheme.primary),
              borderRadius: BorderRadius.circular(2),
            ),
          ),
          child: Row(
            children: [
              Text(
                '$index번',
                style: Theme.of(context).textTheme.labelMedium!.copyWith(
                      color: lightColorScheme.primary,
                    ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
