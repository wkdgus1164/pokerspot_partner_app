import 'package:flutter/material.dart';
import 'package:pokerspot_partner_app/common/constants/sizes.dart';
import 'package:pokerspot_partner_app/common/theme/color.dart';

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
            style: Theme.of(context).textTheme.titleMedium,
          ),
        ),
        Divider(
          color: lightColorScheme.outline,
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
                    Text(
                      sb > 0 ? '$sb' : '-',
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                    const SizedBox(height: padding10),
                    Text(
                      'SB',
                      style: Theme.of(context).textTheme.labelLarge,
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  children: [
                    Text(
                      bb > 0 ? '$bb' : '-',
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                    const SizedBox(height: padding10),
                    Text(
                      'BB',
                      style: Theme.of(context).textTheme.labelLarge,
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  children: [
                    Text(
                      utg > 0 ? '$utg' : '-',
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                    const SizedBox(height: padding10),
                    Text('UTG', style: Theme.of(context).textTheme.labelLarge),
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
