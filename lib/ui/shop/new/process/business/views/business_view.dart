import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pokerspot_partner_app/common/components/app_bar/app_bar.dart';
import 'package:pokerspot_partner_app/common/components/button/custom_button.dart';
import 'package:pokerspot_partner_app/common/components/text_field/text_field_set.dart';
import 'package:pokerspot_partner_app/common/constants/sizes.dart';
import 'package:pokerspot_partner_app/common/routes/base/shop.dart';
import 'package:pokerspot_partner_app/common/theme/color.dart';
import 'package:pokerspot_partner_app/common/theme/typography.dart';
import 'package:pokerspot_partner_app/ui/shop/new/process/components/steps.dart';

class ShopProcessBusinessView extends StatelessWidget {
  const ShopProcessBusinessView({super.key});

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
                      const ShopProcessSteps(index: 1),
                      const SizedBox(height: padding16),
                      Text('사업자 정보', style: headlineSmall),
                      const SizedBox(height: padding10),
                      Text('사업자 정보를 입력해주세요.', style: bodySmall),
                      const SizedBox(height: padding48),

                      // 사업자등록번호
                      _buildBusinessNumber(),
                      const SizedBox(height: padding24),

                      // 대표자명
                      _buildOwner(),
                      const SizedBox(height: padding24),

                      // 휴대폰 번호
                      _buildPhone(),
                      const SizedBox(height: padding32),

                      // 휴대폰 본인인증
                      _buildVerify(),
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
      child: Row(children: [
        const Expanded(child: SizedBox()),
        const SizedBox(width: padding16),
        Expanded(
          child: CustomButton(
            text: '다음',
            customButtonTheme: CustomButtonTheme.primary,
            onPressed: () => context.pushNamed(
              ShopRoutes.processEssential.path,
            ),
          ),
        ),
      ]),
    );
  }

  CustomButton _buildVerify() {
    return CustomButton(
      customButtonTheme: CustomButtonTheme.light,
      text: '휴대폰 본인인증',
      onPressed: () {},
    );
  }

  CustomTextFieldSet _buildPhone() {
    return CustomTextFieldSet(
      inputLabel: '휴대폰 번호',
      keyboardType: TextInputType.number,
      isPassword: false,
      inputHintText: '휴대폰 번호 입력 (-제외)',
      onTextFieldChanged: (_) {},
      captionText: '※ 대표자 명의의 휴대폰 번호를 입력해주세요.',
    );
  }

  CustomTextFieldSet _buildOwner() {
    return CustomTextFieldSet(
      inputLabel: '대표자명',
      keyboardType: TextInputType.text,
      isPassword: false,
      inputHintText: '대표자명 입력',
      onTextFieldChanged: (_) {},
      captionText: '※ 사업자 등록증에 기재된 대표자명을 입력해주세요.',
    );
  }

  CustomTextFieldSet _buildBusinessNumber() {
    return CustomTextFieldSet(
      inputLabel: '사업자등록번호',
      keyboardType: TextInputType.number,
      isPassword: false,
      inputHintText: '-제외 숫자만 입력',
      onTextFieldChanged: (_) {},
    );
  }
}
