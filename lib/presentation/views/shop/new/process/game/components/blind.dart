import 'package:flutter/material.dart';
import 'package:pokerspot_partner_app/presentation/widgets/text_field/text_field.dart';
import 'package:pokerspot_partner_app/common/constants/sizes.dart';

class ShopProcessGameBlind extends StatelessWidget {
  const ShopProcessGameBlind({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          'BL(블라인드)',
          style: Theme.of(context).textTheme.titleLarge,
        ),
        const SizedBox(height: padding24),
        Row(
          children: [
            Expanded(
              flex: 3,
              child: Text(
                'SB',
                style: Theme.of(context).textTheme.titleSmall,
              ),
            ),
            const Expanded(
              flex: 7,
              child: CustomTextField(hint: 'SB 선택'),
            ),
          ],
        ),
        const SizedBox(height: padding16),
        Row(
          children: [
            Expanded(
              flex: 3,
              child: Text(
                'BB',
                style: Theme.of(context).textTheme.titleSmall,
              ),
            ),
            const Expanded(
              flex: 7,
              child: CustomTextField(hint: 'BB 선택'),
            ),
          ],
        ),
        const SizedBox(height: padding16),
        Row(
          children: [
            Expanded(
              flex: 3,
              child: Text(
                'UTG',
                style: Theme.of(context).textTheme.titleSmall,
              ),
            ),
            const Expanded(
              flex: 7,
              child: CustomTextField(hint: '없음'),
            ),
          ],
        ),
        const SizedBox(height: padding16),
        Container(
          padding: const EdgeInsets.all(padding10),
          decoration: BoxDecoration(
            color: const Color.fromRGBO(243, 248, 254, 1),
            borderRadius: BorderRadius.circular(defaultRadius),
          ),
          child: Row(
            children: [
              const Icon(
                Icons.info_outline_rounded,
                color: Colors.blue,
                size: 16,
              ),
              const SizedBox(width: 6),
              Expanded(
                child: Text(
                  '모든 블라인드의 단위는 chip입니다.',
                  style: Theme.of(context).textTheme.labelLarge!.copyWith(
                        fontWeight: FontWeight.w500,
                        color: Colors.blue,
                      ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
