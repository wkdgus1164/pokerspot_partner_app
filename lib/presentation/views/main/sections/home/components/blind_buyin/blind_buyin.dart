import 'package:flutter/material.dart';
import 'package:pokerspot_partner_app/presentation/widgets/button/text_button.dart';
import 'package:pokerspot_partner_app/presentation/widgets/divider/divider.dart';
import 'package:pokerspot_partner_app/common/constants/sizes.dart';
import 'package:pokerspot_partner_app/presentation/views/main/sections/home/components/blind_buyin/blind.dart';
import 'package:pokerspot_partner_app/presentation/views/main/sections/home/components/blind_buyin/buyin.dart';
import 'package:pokerspot_partner_app/presentation/views/main/sections/home/components/card.dart';

class HomeBlindBuyIn extends StatelessWidget {
  const HomeBlindBuyIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.fromLTRB(
            padding16,
            padding16,
            padding10,
            0,
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Text(
                      '블라인드 및 바이인',
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                  ),
                  CustomTextButton(
                    text: '더보기',
                    theme: CustomTextButtonTheme.primary,
                    trailingIcon: Icons.keyboard_arrow_right,
                    onClick: () {},
                  ),
                ],
              ),
              const SizedBox(height: padding24),
              const HomeCard(child: HomeBlind(sb: 500, bb: 500, utg: 0)),
              const SizedBox(height: padding16),
              const HomeCard(child: HomeBuyIn(min: '10p', max: '30p')),
            ],
          ),
        ),
        const SizedBox(height: padding24),
        const CustomDivider(),
      ],
    );
  }
}
