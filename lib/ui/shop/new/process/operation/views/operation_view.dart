import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:pokerspot_partner_app/common/components/app_bar/app_bar.dart';
import 'package:pokerspot_partner_app/common/components/button/custom_button.dart';
import 'package:pokerspot_partner_app/common/constants/assets.dart';
import 'package:pokerspot_partner_app/common/constants/sizes.dart';
import 'package:pokerspot_partner_app/common/routes/base/shop.dart';
import 'package:pokerspot_partner_app/common/theme/color.dart';
import 'package:pokerspot_partner_app/common/theme/typography.dart';
import 'package:pokerspot_partner_app/ui/shop/new/process/components/steps.dart';
import 'package:pokerspot_partner_app/ui/shop/new/process/operation/components/pub.dart';
import 'package:pokerspot_partner_app/ui/shop/new/process/operation/components/time.dart';

class ShopProcessOperationView extends StatelessWidget {
  const ShopProcessOperationView({super.key});

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
          child: Divider(
            color: borderColor,
            height: 1,
            thickness: 1,
          ),
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
                      const ShopProcessSteps(index: 4),
                      const SizedBox(height: padding16),
                      Text('운영 정보', style: headlineSmall),
                      const SizedBox(height: padding10),
                      Text('운영 정보를 입력해주세요.', style: bodySmall),
                      const SizedBox(height: padding48),

                      // 영업 시간
                      Text(
                        '영업시간',
                        style: label.copyWith(
                          color: textColor,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(height: padding16),
                      Row(
                        children: [
                          ShopProcessOperationTime(onTap: () {}, text: '오픈시간'),
                          Padding(
                            padding: const EdgeInsets.all(padding10),
                            child: Text('~', style: label),
                          ),
                          ShopProcessOperationTime(onTap: () {}, text: '마감시간'),
                        ],
                      ),
                      const SizedBox(height: padding32),

                      // 펍 종류
                      Text(
                        '펍 종류',
                        style: label.copyWith(
                          color: textColor,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(height: padding16),
                      Row(
                        children: [
                          ShopProcessOperationPub(
                            asset: Assets.tonerPubOff.path,
                            enabledAsset: Assets.tonerPubOn.path,
                            text: '토너펍',
                            isEnabled: true,
                            onTap: () {},
                          ),
                          const SizedBox(width: padding10),
                          ShopProcessOperationPub(
                            asset: Assets.ringPubOff.path,
                            enabledAsset: Assets.ringPubOn.path,
                            text: '링게임펍',
                            isEnabled: false,
                            onTap: () {},
                          ),
                          const SizedBox(width: padding10),
                          ShopProcessOperationPub(
                            asset: Assets.etcPubOff.path,
                            enabledAsset: Assets.etcPubOn.path,
                            text: '기타펍',
                            isEnabled: false,
                            onTap: () {},
                          ),
                        ],
                      ),
                      const SizedBox(height: padding24),
                      Text(
                        '* 토너펍/링게임펍을 제외한 나머지 종류는 모두 기타펍에 해당됩니다.',
                        style: caption.copyWith(color: textColor),
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
                ShopRoutes.processImageUpload.path,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
