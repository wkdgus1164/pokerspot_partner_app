import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pokerspot_partner_app/presentation/widgets/button/custom_outlined_button.dart';
import 'package:pokerspot_partner_app/common/constants/sizes.dart';
import 'package:pokerspot_partner_app/common/routes/base/shop.dart';
import 'package:pokerspot_partner_app/common/theme/typography.dart';

class HomeNoStore extends StatelessWidget {
  const HomeNoStore({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: padding64),
        Text(
          '등록된 매장이 없습니다.',
          style: label.copyWith(
            color: Colors.grey.shade400,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(height: padding10),
        CustomOutlinedButton(
          text: '신규 등록',
          onPressed: () {
            context.pushNamed(ShopRoutes.newIntro.path);
          },
        ),
      ],
    );
  }
}