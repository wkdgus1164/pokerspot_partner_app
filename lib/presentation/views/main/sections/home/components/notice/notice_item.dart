import 'package:flutter/material.dart';
import 'package:pokerspot_partner_app/common/constants/sizes.dart';
import 'package:pokerspot_partner_app/common/theme/color.dart';
import 'package:pokerspot_partner_app/presentation/effects/card_shadow.dart';

class HomeNoticeItem extends StatelessWidget {
  const HomeNoticeItem({
    Key? key,
    required this.title,
    required this.createdAt,
    required this.onItemPressed,
  }) : super(key: key);

  final String title;
  final String createdAt;
  final Function() onItemPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onItemPressed,
      child: Container(
        padding: const EdgeInsets.only(
          left: padding16,
          right: padding10,
          top: padding16,
          bottom: padding16,
        ),
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(defaultRadius),
          ),
        ),
        child: Container(
          width: MediaQuery.of(context).size.width - 80,
          padding: const EdgeInsets.all(padding16),
          decoration: BoxDecoration(
            color: lightColorScheme.surface,
            border: Border.all(
              color: lightColorScheme.outline,
            ),
            borderRadius: const BorderRadius.all(
              Radius.circular(defaultRadius),
            ),
            boxShadow: [cardShadow],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: Theme.of(context).textTheme.titleMedium!.copyWith(
                      fontWeight: FontWeight.bold,
                      color: customColorScheme.onSurface1,
                      overflow: TextOverflow.ellipsis,
                    ),
                maxLines: 1,
              ),
              const SizedBox(height: padding10),
              Text(
                createdAt,
                style: Theme.of(context).textTheme.labelMedium!.copyWith(
                      color: customColorScheme.onSurface4,
                    ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
