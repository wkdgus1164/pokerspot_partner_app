import 'package:flutter/material.dart';
import 'package:pokerspot_partner_app/presentation/widgets/checkbox/checkbox.dart';
import 'package:pokerspot_partner_app/presentation/widgets/text_field/text_field.dart';
import 'package:pokerspot_partner_app/common/constants/sizes.dart';

class ShopProcessGameBenefits extends StatelessWidget {
  const ShopProcessGameBenefits({super.key});

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
          Text('혜택정보', style: Theme.of(context).textTheme.titleLarge),
          const SizedBox(height: padding24),
          Row(
            children: [
              Expanded(
                flex: 3,
                child: Text(
                  '신규 유저',
                  style: Theme.of(context).textTheme.titleSmall,
                ),
              ),
              const Expanded(
                flex: 7,
                child: CustomTextField(hint: '혜택 선택'),
              ),
            ],
          ),
          const SizedBox(height: padding16),
          Row(
            children: [
              Expanded(
                flex: 3,
                child: Text(
                  '스타트 예약',
                  style: Theme.of(context).textTheme.titleSmall,
                ),
              ),
              const Expanded(
                flex: 7,
                child: CustomTextField(hint: '혜택 선택'),
              ),
            ],
          ),
          const SizedBox(height: padding16),
          Row(
            children: [
              Expanded(
                flex: 3,
                child: Text(
                  '얼리 예약',
                  style: Theme.of(context).textTheme.titleSmall,
                ),
              ),
              const Expanded(
                flex: 7,
                child: CustomTextField(hint: '혜택 선택'),
              ),
            ],
          ),
          const SizedBox(height: padding16),
          Row(
            children: [
              Expanded(
                flex: 3,
                child: Text(
                  'Max 바이인',
                  style: Theme.of(context).textTheme.titleSmall,
                ),
              ),
              const Expanded(
                flex: 7,
                child: CustomTextField(hint: '혜택 선택'),
              ),
            ],
          ),
          const SizedBox(height: padding16),
          Row(
            children: [
              CustomCheckbox(onChanged: () {}, value: false),
              const SizedBox(width: 6),
              Expanded(
                child: Text(
                  '중복 혜택 적용',
                  style: Theme.of(context).textTheme.titleSmall,
                ),
              ),
            ],
          ),
          const SizedBox(height: padding32),
        ],
      ),
    );
  }
}
