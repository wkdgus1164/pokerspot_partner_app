import 'package:flutter/material.dart';
import 'package:pokerspot_partner_app/common/constants/sizes.dart';
import 'package:pokerspot_partner_app/common/theme/color.dart';

class ShopProcessOperationTime extends StatelessWidget {
  const ShopProcessOperationTime({
    super.key,
    required this.onTap,
    this.time = '00:00',
    required this.text,
    this.isSelected = false,
  });

  final Function()? onTap;
  final String text;
  final String time;
  final bool isSelected;

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
                border: Border.all(color: lightColorScheme.outline),
                borderRadius: BorderRadius.circular(defaultRadius),
              ),
              child: Column(
                children: [
                  Text(text, style: Theme.of(context).textTheme.labelLarge),
                  const SizedBox(height: padding16),
                  Text(
                    time,
                    style: Theme.of(context).textTheme.titleLarge!.copyWith(
                          color: isSelected
                              ? customColorScheme.onSurface1
                              : customColorScheme.onSurface4,
                          fontWeight: FontWeight.bold,
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
