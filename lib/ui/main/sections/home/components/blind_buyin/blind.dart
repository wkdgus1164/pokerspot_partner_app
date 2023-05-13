import 'package:flutter/material.dart';
import 'package:pokerspot_partner_app/common/constants/sizes.dart';
import 'package:pokerspot_partner_app/common/theme/color.dart';
import 'package:pokerspot_partner_app/common/theme/typography.dart';

class HomeBlind extends StatelessWidget {
  const HomeBlind({
    Key? key,
    required this.sb,
    required this.bb,
    required this.utg,
  }) : super(key: key);

  final int sb;
  final int bb;
  final int utg;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(
          padding: const EdgeInsets.all(padding16),
          child: Text(
            '블라인드',
            style: titleMedium.copyWith(color: textColor),
          ),
        ),
        const Divider(
          color: Color.fromRGBO(242, 242, 242, 1),
          height: 1,
          thickness: 1,
        ),
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
                    Text(sb > 0 ? '$sb' : '-', style: headlineSmall),
                    const SizedBox(height: padding10),
                    Text('SB', style: label),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  children: [
                    Text(bb > 0 ? '$bb' : '-', style: headlineSmall),
                    const SizedBox(height: padding10),
                    Text('BB', style: label.copyWith(color: textColor)),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  children: [
                    Text(utg > 0 ? '$utg' : '-', style: headlineSmall),
                    const SizedBox(height: padding10),
                    Text(
                      'UTG',
                      style: label.copyWith(color: textColor),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: padding10),
      ],
    );
  }
}
