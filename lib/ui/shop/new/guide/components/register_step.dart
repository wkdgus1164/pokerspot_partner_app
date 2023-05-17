import 'package:flutter/material.dart';
import 'package:pokerspot_partner_app/common/constants/sizes.dart';
import 'package:pokerspot_partner_app/common/theme/color.dart';
import 'package:pokerspot_partner_app/common/theme/typography.dart';

class RegisterStepCard extends StatelessWidget {
  const RegisterStepCard({
    Key? key,
    required this.textList,
  }) : super(key: key);

  final List<String> textList;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: textList
          .asMap()
          .entries
          .map((entry) => Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(defaultRadius),
                      border: Border.all(color: borderColor),
                    ),
                    margin: const EdgeInsets.only(top: padding10),
                    padding: const EdgeInsets.symmetric(vertical: padding16),
                    child: Column(
                      children: [
                        Text(
                          'Step. 0${entry.key + 1}',
                          style: label.copyWith(color: primaryColor),
                        ),
                        const SizedBox(height: padding10),
                        Text(
                          entry.value,
                          style: bodySmall.copyWith(
                            color: textColor,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                  if (entry.key != textList.length - 1) ...[
                    Icon(Icons.arrow_drop_down, color: primaryColor, size: 30),
                  ],
                ],
              ))
          .toList(),
    );
  }
}
