import 'package:flutter/material.dart';
import 'package:pokerspot_partner_app/common/constants/sizes.dart';
import 'package:pokerspot_partner_app/presentation/views/sections/home/components/coupon/coupon_card.dart';
import 'package:pokerspot_partner_app/presentation/views/sections/home/coupon_admin/components/count.dart';
import 'package:pokerspot_partner_app/presentation/views/sections/home/coupon_admin/components/information.dart';
import 'package:pokerspot_partner_app/presentation/widgets/app_bar/app_bar.dart';
import 'package:pokerspot_partner_app/presentation/widgets/button/custom_button.dart';
import 'package:pokerspot_partner_app/presentation/widgets/divider/divider.dart';

class CouponAdminView extends StatelessWidget {
  const CouponAdminView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(text: '쿠폰 설정'),
      body: Column(
        children: [
          // 쿠폰 정보
          Container(
            padding: const EdgeInsets.all(padding16),
            child: const CouponCard(
              title: '1만원 즉시할인 쿠폰',
              description: '매장이용권 1맘ㄴ원 할인 · 기간 무제한',
              total: 8,
              used: 4,
              last: 4,
            ),
          ),
          const CustomDivider(),

          // 남은 개수 조정
          CouponAdminCount(
            lastCount: 5,
            onMinusButtonPressed: () {},
            onPlusButtonPressed: () {},
          ),
          const CustomDivider(),

          // 코멘트
          const CouponAdminInformation(),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.all(padding16),
            child: CustomFilledButton(text: '변경하기', onPressed: () {}),
          ),
        ],
      ),
    );
  }
}
