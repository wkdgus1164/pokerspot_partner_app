import 'package:flutter/material.dart';
import 'package:pokerspot_partner_app/apps/global/global.dart';

class PSelector extends StatelessWidget {
  const PSelector({
    super.key,
    required this.labelText,
    this.valueText,
    this.handleClick,
    required this.placeholderText,
  });

  final String labelText;
  final String? valueText;
  final String placeholderText;
  final Function()? handleClick;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: handleClick,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(
            Radius.circular(16),
          ),
          border: Border.all(color: colorGrey90),
        ),
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              labelText,
              style: Theme.of(context).textTheme.bodySmall!.copyWith(
                    color: colorGrey20,
                  ),
            ),
            const SizedBox(height: 8),
            Row(
              children: [
                Expanded(
                  child: Text(
                    valueText ?? placeholderText,
                    style: textTheme.bodyLarge!.copyWith(
                      color: colorGrey70,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ),
                const SizedBox(width: 8),
                const Icon(
                  Icons.arrow_drop_down,
                  color: colorGrey80,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
