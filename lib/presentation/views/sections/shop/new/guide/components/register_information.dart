import 'package:flutter/material.dart';
import 'package:pokerspot_partner_app/common/constants/sizes.dart';
import 'package:pokerspot_partner_app/common/theme/color.dart';
import 'package:pokerspot_partner_app/presentation/views/sections/shop/new/guide/models/register_information_model.dart';

class RegisterInformationCard extends StatelessWidget {
  const RegisterInformationCard({
    Key? key,
    required this.model,
  }) : super(key: key);

  final RegisterInformationModel model;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: lightColorScheme.outline),
            borderRadius: BorderRadius.circular(defaultRadius),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: const EdgeInsets.all(padding16),
                child: Text(
                  model.title,
                  style: Theme.of(context).textTheme.labelLarge!.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                ),
              ),
              const Divider(height: 1, indent: 1),
              Padding(
                padding: const EdgeInsets.all(padding10),
                child: Column(
                  children: model.contents
                      .map(
                        (it) => Padding(
                          padding: const EdgeInsets.all(4),
                          child: Row(
                            children: [
                              Text(
                                '·',
                                style: Theme.of(context)
                                    .textTheme
                                    .labelLarge!
                                    .copyWith(
                                      color: customColorScheme.onSurface4,
                                      fontWeight: FontWeight.bold,
                                    ),
                              ),
                              const SizedBox(width: 8),
                              Expanded(
                                child: Text(
                                  it,
                                  style: Theme.of(context)
                                      .textTheme
                                      .labelLarge!
                                      .copyWith(
                                        color: customColorScheme.onSurface2,
                                      ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                      .toList(),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 6),
        if (model.hint.isNotEmpty) ...[
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(
                Icons.info_outline_rounded,
                size: 16,
                color: customColorScheme.onSurface3,
              ),
              const SizedBox(width: 4),
              Expanded(
                child: Text(
                  model.hint,
                  style: Theme.of(context).textTheme.labelMedium!.copyWith(
                        color: customColorScheme.onSurface3,
                      ),
                ),
              ),
            ],
          ),
        ],
        const SizedBox(height: padding24),
      ],
    );
  }
}
