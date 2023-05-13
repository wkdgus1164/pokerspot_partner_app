import 'package:flutter/material.dart';
import 'package:pokerspot_partner_app/common/components/button/custom_button.dart';
import 'package:pokerspot_partner_app/common/components/button/custom_outlined_button.dart';
import 'package:pokerspot_partner_app/common/components/divider/divider.dart';
import 'package:pokerspot_partner_app/common/constants/sizes.dart';
import 'package:pokerspot_partner_app/common/theme/color.dart';
import 'package:pokerspot_partner_app/common/theme/typography.dart';
import 'package:pokerspot_partner_app/ui/main/sections/home/components/header.dart';
import 'package:pokerspot_partner_app/ui/main/sections/home/components/notice.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar,
      body: SafeArea(
        child: Column(
          children: [
            HomeNotice(),
            SizedBox(height: padding10),
            CustomDivider(),
            Expanded(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '등록된 매장이 없습니다.',
                      style: label.copyWith(
                        color: Colors.grey.shade400,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(height: padding10),
                    const CustomOutlinedButton(text: '신규 등록'),
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
