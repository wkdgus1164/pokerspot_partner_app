import 'package:flutter/material.dart';
import 'package:pokerspot_partner_app/apps/global/global.dart';

class Caption extends StatelessWidget {
  const Caption({
    super.key,
    this.title,
    required this.caption,
  });

  final String? title;
  final String caption;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24),
      decoration: const BoxDecoration(
        color: colorGrey95,
        borderRadius: BorderRadius.all(
          Radius.circular(16),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          if (title != null) ...[
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  '📌',
                  style: textTheme.titleMedium!.copyWith(
                    fontWeight: FontWeight.bold,
                    color: colorGrey40,
                  ),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: Text(
                    title!,
                    style: textTheme.titleMedium!.copyWith(
                      fontWeight: FontWeight.bold,
                      color: colorGrey40,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
          ],
          Text(
            caption,
            style: textTheme.labelLarge!.copyWith(
              color: colorGrey50,
            ),
          ),
        ],
      ),
    );
  }
}
