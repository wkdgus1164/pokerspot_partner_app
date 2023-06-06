import 'package:flutter/material.dart';
import 'package:pokerspot_partner_app/common/constants/sizes.dart';
import 'package:pokerspot_partner_app/common/theme/color.dart';
import 'package:pokerspot_partner_app/common/theme/typography.dart';

class HomeBuyIn extends StatelessWidget {
  const HomeBuyIn({
    Key? key,
    required this.min,
    required this.max,
  }) : super(key: key);

  final String min;
  final String max;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(
          padding: const EdgeInsets.all(padding16),
          child: Text(
            '바이인',
            style: titleMedium.copyWith(color: textColor),
          ),
        ),
        Divider(color: greyVariant4, height: 1, thickness: 1),
        Padding(
          padding: const EdgeInsets.only(
            top: padding24,
            bottom: padding10,
          ),
          child: Row(
            children: [
              Expanded(
                child: Column(
                  children: [
                    Text(min, style: headlineSmall),
                    const SizedBox(height: padding10),
                    Text('MIN', style: label),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  children: [
                    Text(max, style: headlineSmall),
                    const SizedBox(height: padding10),
                    Text('MAX', style: label.copyWith(color: textColor)),
                  ],
                ),
              ),
              const Expanded(child: SizedBox()),
            ],
          ),
        ),
        const SizedBox(height: padding10),
      ],
    );
  }
}
