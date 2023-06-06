import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pokerspot_partner_app/presentation/widgets/app_bar/app_bar.dart';
import 'package:pokerspot_partner_app/presentation/widgets/button/custom_button.dart';
import 'package:pokerspot_partner_app/presentation/widgets/divider/divider.dart';
import 'package:pokerspot_partner_app/common/constants/assets.dart';
import 'package:pokerspot_partner_app/common/constants/sizes.dart';
import 'package:pokerspot_partner_app/common/routes/base/shop.dart';
import 'package:pokerspot_partner_app/common/theme/color.dart';
import 'package:pokerspot_partner_app/common/theme/typography.dart';
import 'package:pokerspot_partner_app/presentation/views/shop/new/process/components/steps.dart';
import 'package:pokerspot_partner_app/presentation/views/shop/new/process/operation/components/pub.dart';
import 'package:pokerspot_partner_app/presentation/views/shop/new/process/operation/components/time.dart';
import 'package:pokerspot_partner_app/presentation/views/shop/new/process/operation/components/warning.dart';

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
                            text: '기타펍 A',
                            isEnabled: false,
                            onTap: () {},
                          ),
                          const SizedBox(width: padding10),
                          ShopProcessOperationPub(
                            asset: Assets.etcPubOff.path,
                            enabledAsset: Assets.etcPubOn.path,
                            text: '기타펍 B',
                            isEnabled: false,
                            onTap: () {},
                          ),
                        ],
                      ),
                      const SizedBox(height: padding32),
                      const CustomDivider(),
                      const SizedBox(height: padding32),
                      Row(
                        children: [
                          Icon(
                            Icons.info_outline_rounded,
                            color: textColor,
                            size: 20,
                          ),
                          const SizedBox(width: 6),
                          Expanded(
                            child: Text(
                              '신규 매장 등록시 꼭 확인해주세요!',
                              style: titleMedium.copyWith(color: textColor),
                            ),
                          ),
                        ],
                      ),
                      const ShopProcessOperationWarning(),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 6,
                          bottom: padding10,
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(width: 4),
                            Text(
                              '·',
                              style: label.copyWith(
                                color: greyVariant1,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                            const SizedBox(width: 6),
                            Expanded(
                              child: Text(
                                '그 이외 포커스팟은 홀덤펍의 정보 중개자로서, 해당 서비스 제공의 당사자가 아님을 고지하고 서비스의 예약 이용 및 환불, 불법적인 행위와 관련된 의무와 책임은 각 서비스 제공자에게 있습니다.',
                                style: caption.copyWith(color: greyVariant1),
                              ),
                            ),
                          ],
                        ),
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
                ShopRoutes.processGame.path,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
