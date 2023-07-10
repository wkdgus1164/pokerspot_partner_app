import 'package:flutter/material.dart';
import 'package:pokerspot_partner_app/common/constants/sizes.dart';
import 'package:pokerspot_partner_app/common/theme/color.dart';

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
                      border: Border.all(color: lightColorScheme.outline),
                    ),
                    margin: const EdgeInsets.only(top: padding10),
                    padding: const EdgeInsets.symmetric(vertical: padding16),
                    child: Column(
                      children: [
                        Text(
                          'Step. 0${entry.key + 1}',
                          style:
                              Theme.of(context).textTheme.titleMedium!.copyWith(
                                    color: lightColorScheme.primary,
                                    fontWeight: FontWeight.bold,
                                  ),
                        ),
                        const SizedBox(height: padding10),
                        Text(
                          entry.value,
                          style:
                              Theme.of(context).textTheme.titleMedium!.copyWith(
                                    color: customColorScheme.onSurface2,
                                  ),
                        ),
                      ],
                    ),
                  ),
                  if (entry.key != textList.length - 1) ...[
                    Icon(
                      Icons.arrow_drop_down,
                      color: lightColorScheme.primary,
                      size: 30,
                    ),
                  ],
                ],
              ))
          .toList(),
    );
  }
}
