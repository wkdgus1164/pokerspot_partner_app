import 'package:flutter/material.dart';
import 'package:pokerspot_partner_app/common/constants/sizes.dart';
import 'package:pokerspot_partner_app/common/theme/color.dart';
import 'package:pokerspot_partner_app/common/theme/typography.dart';

class ShopProcessOperationTime extends StatelessWidget {
  const ShopProcessOperationTime({
    super.key,
    required this.onTap,
    this.time = '00:00',
    required this.text,
  });

  final Function()? onTap;
  final String text;
  final String time;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Material(
        color: Colors.transparent,
        child: Ink(
          color: Colors.white,
          child: InkWell(
            borderRadius: BorderRadius.circular(defaultRadius),
            onTap: onTap,
            child: Container(
              padding: const EdgeInsets.all(padding16),
              decoration: BoxDecoration(
                border: Border.all(color: borderColor),
                borderRadius: BorderRadius.circular(defaultRadius),
              ),
              child: Column(
                children: [
                  Text(text, style: label),
                  const SizedBox(height: padding16),
                  Text(
                    time,
                    style: bodyLarge.copyWith(
                      color: greyVariant6.withOpacity(0.4),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
