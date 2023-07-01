import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pokerspot_partner_app/common/theme/color.dart';

class AgreementCategory extends StatelessWidget {
  const AgreementCategory({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 4,
      ),
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          side: BorderSide(
            width: 0.5,
            color: customColorScheme.onSurface3,
          ),
          borderRadius: BorderRadius.circular(14),
        ),
      ),
      child: Text(
        text,
        style: Theme.of(context).textTheme.labelLarge!.copyWith(
              color: customColorScheme.onSurface3,
            ),
      ),
    );
  }
}
