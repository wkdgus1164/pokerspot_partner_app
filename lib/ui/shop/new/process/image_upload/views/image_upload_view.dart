import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pokerspot_partner_app/common/components/app_bar/app_bar.dart';
import 'package:pokerspot_partner_app/common/components/button/custom_button.dart';
import 'package:pokerspot_partner_app/common/constants/sizes.dart';
import 'package:pokerspot_partner_app/common/routes/base/shop.dart';
import 'package:pokerspot_partner_app/common/theme/color.dart';
import 'package:pokerspot_partner_app/common/theme/typography.dart';
import 'package:pokerspot_partner_app/ui/shop/new/process/components/steps.dart';
import 'package:pokerspot_partner_app/ui/shop/new/process/image_upload/components/image_item.dart';

class ShopProcessImageUploadView extends StatelessWidget {
  const ShopProcessImageUploadView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        customAppBarTheme: CustomAppBarTheme.white,
        customAppBarLeftSide: CustomAppBarLeftSide.cancelButton,
        customAppBarCenter: CustomAppBarCenter.text,
        text: '신규 매장 등록',
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(1),
          child: Divider(color: borderColor, height: 1, thickness: 1),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Container(
                  padding: const EdgeInsets.all(padding16),
                  color: backgroundColor,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      const ShopProcessSteps(index: 3),
                      const SizedBox(height: padding16),
                      Text('매장 사진', style: headlineSmall),
                      const SizedBox(height: padding10),
                      Text('2장~5장의 매장 사진을 등록해주세요.', style: bodySmall),
                      const SizedBox(height: padding48),
                      Wrap(
                        spacing: padding24,
                        runSpacing: padding24,
                        direction: Axis.horizontal,
                        children: [
                          ShopProcessImageItem(
                            caption: '대표사진',
                            isPrimary: true,
                            onPressed: () {},
                          ),
                          ShopProcessImageItem(
                            caption: '필수 1',
                            onPressed: () {},
                          ),
                          ShopProcessImageItem(
                            caption: '선택 1',
                            onPressed: () {},
                          ),
                          ShopProcessImageItem(
                            caption: '선택 2',
                            onPressed: () {},
                          ),
                          ShopProcessImageItem(
                            caption: '선택 3',
                            onPressed: () {},
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            _buildNextButton(context),
          ],
        ),
      ),
    );
  }

  Container _buildNextButton(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.only(
        top: padding16,
        left: padding16,
        right: padding16,
        bottom: padding32,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 4,
            offset: const Offset(0, -1),
          ),
        ],
      ),
      child: Row(
        children: [
          Expanded(
            child: CustomButton(
              text: '이전',
              customButtonTheme: CustomButtonTheme.light,
              onPressed: () => Navigator.of(context).pop(),
            ),
          ),
          const SizedBox(width: padding16),
          Expanded(
            child: CustomButton(
              text: '다음',
              customButtonTheme: CustomButtonTheme.primary,
              onPressed: () => context.pushNamed(
                ShopRoutes.processOperation.path,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
