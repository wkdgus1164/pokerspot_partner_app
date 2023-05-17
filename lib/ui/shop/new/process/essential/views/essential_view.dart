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
import 'package:pokerspot_partner_app/ui/shop/new/process/essential/components/address_form.dart';

class ShopProcessEssentialView extends StatelessWidget {
  const ShopProcessEssentialView({super.key});

  @override
  Widget build(BuildContext context) {
    InputDecoration textFieldDecoration() {
      return InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(width: 1, color: Colors.grey.shade300),
          borderRadius: BorderRadius.circular(4),
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide(width: 1, color: Colors.grey.shade300),
          borderRadius: BorderRadius.circular(4),
        ),
        hintText: '주소 입력',
        hintStyle: bodyMedium.copyWith(color: Colors.grey.shade400),
        suffixIcon: Container(
          width: 80,
          alignment: Alignment.center,
          margin: const EdgeInsets.only(top: 6, bottom: 6, right: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            border: Border.all(color: Colors.grey.shade300),
          ),
          child: Text(
            '주소찾기',
            style: caption.copyWith(color: textColor),
          ),
        ),
      );
    }

    return Scaffold(
      appBar: CustomAppBar(
        customAppBarTheme: CustomAppBarTheme.white,
        customAppBarCenter: CustomAppBarCenter.text,
        text: '신규 매장 등록',
        customAppBarLeftSide: CustomAppBarLeftSide.cancelButton,
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(1),
          child: Divider(
            height: 1,
            thickness: 1,
            color: borderColor,
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
                      const ShopProcessSteps(index: 2),
                      const SizedBox(height: padding16),
                      Text('기본 정보', style: headlineSmall),
                      const SizedBox(height: padding10),
                      Text('사업자 정보를 입력해주세요.', style: bodySmall),
                      const SizedBox(height: padding48),

                      // 매장 상호명
                      CustomTextFieldSet(
                        inputLabel: '매장 상호명',
                        keyboardType: TextInputType.number,
                        isPassword: false,
                        inputHintText: '매장 상호명 입력',
                        onTextFieldChanged: (_) {},
                      ),
                      const SizedBox(height: padding24),

                      // 매장 주소
                      const ShopProcessEssentialAddressForm(),
                      const SizedBox(height: padding24),

                      // 업태
                      CustomTextFieldSet(
                        inputLabel: '업태',
                        isPassword: false,
                        inputHintText: '예) 숙박 및 음식점업',
                        onTextFieldChanged: (_) {},
                        keyboardType: TextInputType.text,
                        captionText: '* 사업자 등록증에 기재된 업태를 입력해주세요.',
                      ),
                      const SizedBox(height: padding32),

                      // 종목
                      CustomTextFieldSet(
                        inputLabel: '종목',
                        isPassword: false,
                        inputHintText: '예) 일반 유흥 주점업',
                        onTextFieldChanged: (_) {},
                        keyboardType: TextInputType.text,
                        captionText: '* 사업자 등록증에 기재된 종목을 입력해주세요.',
                      ),
                      const SizedBox(height: padding32),
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
