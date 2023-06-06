import 'package:flutter/material.dart';
import 'package:pokerspot_partner_app/presentation/widgets/text_field/text_field.dart';
import 'package:pokerspot_partner_app/common/constants/sizes.dart';
import 'package:pokerspot_partner_app/common/theme/color.dart';
import 'package:pokerspot_partner_app/common/theme/typography.dart';

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
          Text(
            'Buy-in(바이인)',
            style: titleLarge.copyWith(color: textColor),
          ),
          const SizedBox(height: padding24),
          Row(
            children: [
              Expanded(
                flex: 3,
                child: Text(
                  'Min',
                  style: titleSmall.copyWith(color: textColor),
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
                  style: titleSmall.copyWith(color: textColor),
                ),
              ),
              const Expanded(flex: 7, child: CustomTextField(hint: 'Max 선택')),
            ],
          ),
          const SizedBox(height: padding16),
          Container(
            padding: const EdgeInsets.all(padding10),
            decoration: BoxDecoration(
              color: greyVariant5,
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
                    style: caption.copyWith(
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
