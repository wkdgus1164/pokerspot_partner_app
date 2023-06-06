import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pokerspot_partner_app/presentation/widgets/app_bar/app_bar.dart';
import 'package:pokerspot_partner_app/common/constants/assets.dart';
import 'package:pokerspot_partner_app/common/constants/sizes.dart';
import 'package:pokerspot_partner_app/common/theme/color.dart';
import 'package:pokerspot_partner_app/common/theme/typography.dart';

class ShopView extends StatelessWidget {
  const ShopView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        customAppBarTheme: CustomAppBarTheme.black,
        text: '매장관리',
        customAppBarCenter: CustomAppBarCenter.text,
      ),
      body: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Ink(
              decoration: const BoxDecoration(
                color: Color.fromRGBO(58, 69, 82, 1),
              ),
              child: InkWell(
                onTap: () {},
                splashColor:
                    const Color.fromRGBO(42, 50, 59, 1).withOpacity(0.4),
                child: Container(
                  padding: const EdgeInsets.all(padding24),
                  child: Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(padding10),
                        decoration: BoxDecoration(
                          color: const Color.fromRGBO(42, 50, 59, 1),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: SvgPicture.asset(Assets.addNewBusiness.path),
                      ),
                      const SizedBox(height: 6),
                      Text(
                        '업체 신규 등록',
                        style: bodySmall.copyWith(color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: padding16,
                vertical: padding24,
              ),
              child: Row(
                children: [
                  Text(
                    '보유 매장',
                    style: titleLarge.copyWith(color: textColor),
                  ),
                  const SizedBox(width: 6),
                  Text(
                    '0',
                    style: titleLarge.copyWith(color: primaryColor),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.info_outline_rounded, color: greyVariant2),
                    const SizedBox(height: padding10),
                    Text(
                      '등록된 매장이 없습니다.\n매장을 등록해 주시기 바랍니다.',
                      style: label.copyWith(color: greyVariant2),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
