import 'package:flutter/material.dart';
import 'package:pokerspot_partner_app/common/constants/sizes.dart';
import 'package:pokerspot_partner_app/common/theme/color.dart';
import 'package:pokerspot_partner_app/common/theme/typography.dart';
import 'package:pokerspot_partner_app/ui/shop/new/guide/models/register_information_model.dart';

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
            border: Border.all(color: borderColor),
            borderRadius: BorderRadius.circular(defaultRadius),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: const EdgeInsets.all(padding16),
                child: Text(
                  model.title,
                  style: titleSmall.copyWith(color: textColor),
                ),
              ),
              Divider(height: 1, indent: 1, color: borderColor),
              Padding(
                padding: const EdgeInsets.all(padding10),
                child: Column(
                  children: model.contents
                      .map((it) => Padding(
                            padding: const EdgeInsets.all(6),
                            child: Row(
                              children: [
                                Text(
                                  '·',
                                  style: label.copyWith(
                                    color: Colors.grey.shade400,
                                  ),
                                ),
                                const SizedBox(width: 8),
                                Expanded(
                                  child: Text(
                                    it,
                                    style: label.copyWith(
                                      color: textColor,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ))
                      .toList(),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 6),
        if (model.hint.isNotEmpty) ...[
          Row(
            children: [
              Icon(Icons.info_outline_rounded, size: 16, color: textColor),
              const SizedBox(width: 4),
              Text(model.hint, style: caption.copyWith(color: textColor)),
            ],
          ),
        ],
        const SizedBox(height: padding24),
      ],
    );
  }
}
