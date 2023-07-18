import 'package:flutter/material.dart';
import 'package:pokerspot_partner_app/common/theme/color.dart';

class GuestFilterItem extends StatelessWidget {
  const GuestFilterItem({
    super.key,
    required this.type,
    required this.count,
    this.isSelected = false,
    required this.onPressed,
  });

  final String type;
  final int count;
  final bool isSelected;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(100),
      onTap: onPressed,
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 10,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          border: Border.all(
            color: isSelected
                ? lightColorScheme.primary
                : lightColorScheme.outline,
          ),
        ),
        child: Row(
          children: [
            Text(
              type,
              style: Theme.of(context).textTheme.labelLarge!.copyWith(
                    color: isSelected
                        ? lightColorScheme.primary
                        : customColorScheme.onSurface2,
                  ),
            ),
            const SizedBox(width: 10),
            Text(
              count.toString(),
              style: Theme.of(context).textTheme.labelLarge!.copyWith(
                    color: isSelected
                        ? lightColorScheme.primary
                        : customColorScheme.onSurface2,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
