import 'package:flutter/material.dart';
import 'package:pokerspot_partner_app/common/constants/sizes.dart';
import 'package:pokerspot_partner_app/common/theme/color.dart';

class InformationItem extends StatelessWidget {
  final String title;
  final String value;

  const InformationItem({
    super.key,
    required this.title,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                color: customColorScheme.onSurface3,
              ),
        ),
        const SizedBox(height: padding16),
        Text(
          value,
          style: Theme.of(context).textTheme.titleMedium!.copyWith(
                color: customColorScheme.onSurface1,
              ),
        ),
        const SizedBox(height: padding32),
      ],
    );
  }
}
