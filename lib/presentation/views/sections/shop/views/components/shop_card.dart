import 'package:flutter/material.dart';
import 'package:pokerspot_partner_app/common/constants/sizes.dart';
import 'package:pokerspot_partner_app/common/theme/color.dart';
import 'package:pokerspot_partner_app/presentation/effects/card_shadow.dart';
import 'package:pokerspot_partner_app/presentation/views/sections/shop/views/components/card_body.dart';

class ShopCard extends StatelessWidget {
  const ShopCard({
    Key? key,
    required this.thumbnail,
    required this.title,
    required this.type,
    required this.status,
    required this.onEditButtonPressed,
    required this.onCorporateButtonPressed,
    required this.isRunning,
    required this.isRunningCheckChanged,
  }) : super(key: key);

  final String thumbnail;
  final String title;
  final String type;
  final String status;
  final Function() onEditButtonPressed;
  final Function() onCorporateButtonPressed;
  final bool isRunning;
  final Function(bool?) isRunningCheckChanged;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        left: padding16,
        right: padding16,
        bottom: padding16,
      ),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(
          Radius.circular(defaultRadius * 2),
        ),
        boxShadow: [cardShadow],
        color: lightColorScheme.surface,
      ),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: lightColorScheme.outline),
          borderRadius: const BorderRadius.all(
            Radius.circular(defaultRadius * 2),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                children: [
                  Text(
                    '제휴기간',
                    style: Theme.of(context).textTheme.labelLarge!.copyWith(
                          color: customColorScheme.onSurface4,
                        ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: padding10),
                    child: Text(
                      '·',
                      style: Theme.of(context).textTheme.labelLarge!.copyWith(
                            color: customColorScheme.onSurface4,
                          ),
                    ),
                  ),
                  Text(
                    '무료 제휴이벤트 적용 중',
                    style: Theme.of(context).textTheme.labelLarge!.copyWith(
                          color: customColorScheme.onSurface4,
                        ),
                  ),
                ],
              ),
            ),
            const Divider(height: 1, thickness: 1),
            ShopCardBody(
              title: title,
              type: type,
              status: status,
              thumbnail: thumbnail,
              onEditButtonPressed: onEditButtonPressed,
              onCorporateButtonPressed: onCorporateButtonPressed,
            ),
            const Divider(height: 1, thickness: 1),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                children: [
                  Text(
                    '영업 중단',
                    style: Theme.of(context).textTheme.labelLarge!.copyWith(
                          fontWeight: FontWeight.bold,
                          color: customColorScheme.onSurface2,
                        ),
                  ),
                  const Spacer(),
                  SizedBox(
                    width: 34,
                    height: 20,
                    child: Transform.scale(
                      scale: 0.6,
                      child: Switch(
                        value: isRunning,
                        onChanged: isRunningCheckChanged,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
