import 'package:flutter/material.dart';
import 'package:pokerspot_partner_app/common/constants/sizes.dart';
import 'package:pokerspot_partner_app/common/theme/color.dart';

class PartnershipMainBasicInfo extends StatelessWidget {
  const PartnershipMainBasicInfo({
    super.key,
    this.lastDays = 0,
  });

  final int lastDays;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          side: BorderSide(
            color: lastDays == 0
                ? lightColorScheme.error
                : lightColorScheme.primary,
          ),
          borderRadius: BorderRadius.circular(4),
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 10,
              vertical: 6,
            ),
            decoration: ShapeDecoration(
              color: lastDays == 0
                  ? lightColorScheme.error
                  : lightColorScheme.primary,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(4),
                  bottomLeft: Radius.circular(4),
                ),
              ),
            ),
            child: Row(
              children: [
                Text(
                  lastDays == 0 ? '제휴 중단' : '제휴 진행 중',
                  style: Theme.of(context).textTheme.labelLarge!.copyWith(
                        fontWeight: FontWeight.bold,
                        color: lastDays == 0
                            ? lightColorScheme.onError
                            : lightColorScheme.onPrimary,
                      ),
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: padding10),
            child: Row(
              children: [
                Text(
                  'D-$lastDays',
                  style: Theme.of(context).textTheme.labelLarge!.copyWith(
                        fontWeight: FontWeight.bold,
                        color: lastDays == 0
                            ? lightColorScheme.error
                            : lightColorScheme.primary,
                      ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
