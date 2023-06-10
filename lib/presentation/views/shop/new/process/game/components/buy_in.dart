import 'package:flutter/material.dart';
import 'package:pokerspot_partner_app/presentation/widgets/text_field/text_field.dart';
import 'package:pokerspot_partner_app/common/constants/sizes.dart';

class ShopProcessGameBuyIn extends StatelessWidget {
  const ShopProcessGameBuyIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: padding16,
        vertical: padding32,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text('Buy-in(바이인)', style: Theme.of(context).textTheme.titleLarge),
          const SizedBox(height: padding24),
          Row(
            children: [
              Expanded(
                flex: 3,
                child: Text(
                  'Min',
                  style: Theme.of(context).textTheme.titleSmall,
                ),
              ),
              const Expanded(flex: 7, child: CustomTextField(hint: 'Min 선택')),
            ],
          ),
          const SizedBox(height: padding16),
          Row(
            children: [
              Expanded(
                flex: 3,
                child: Text(
                  'Max',
                  style: Theme.of(context).textTheme.titleSmall,
                ),
              ),
              const Expanded(flex: 7, child: CustomTextField(hint: 'Max 선택')),
            ],
          ),
          const SizedBox(height: padding16),
          Container(
            padding: const EdgeInsets.all(padding10),
            decoration: BoxDecoration(
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
                    '모든 바이인의 숫자 단위는 ‘만’단위 입니다.',
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
      ),
    );
  }
}
