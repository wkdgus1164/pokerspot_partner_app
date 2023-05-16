import 'package:flutter/material.dart';
import 'package:pokerspot_partner_app/common/components/app_bar/app_bar.dart';

class ShopNewGuideTabView extends StatelessWidget {
  const ShopNewGuideTabView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        text: '신규 매장 등록 가이드',
        customAppBarTheme: CustomAppBarTheme.black,
        customAppBarCenter: CustomAppBarCenter.text,
        customAppBarLeftSide: CustomAppBarLeftSide.cancelButton,
      ),
    );
  }
}
