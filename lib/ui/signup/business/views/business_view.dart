import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pokerspot_partner_app/common/components/app_bar/app_bar.dart';
import 'package:pokerspot_partner_app/common/components/button/custom_button.dart';
import 'package:pokerspot_partner_app/common/constants/sizes.dart';
import 'package:pokerspot_partner_app/common/routes/routes.dart';
import 'package:pokerspot_partner_app/common/theme/color.dart';
import 'package:pokerspot_partner_app/common/theme/typography.dart';
import 'package:pokerspot_partner_app/ui/signup/business/components/business_number.dart';
import 'package:pokerspot_partner_app/ui/signup/business/components/header.dart';
import 'package:pokerspot_partner_app/ui/signup/business/components/owner_name.dart';
import 'package:pokerspot_partner_app/ui/signup/business/components/phone-number.dart';

class SignupBusinessView extends StatelessWidget {
  const SignupBusinessView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        customAppBarLeftSide: CustomAppBarLeftSide.backButton,
        customAppBarRightSide: CustomAppBarRightSide.none,
        customAppBarCenter: CustomAppBarCenter.text,
        text: '회원가입',
      ),
      body: SafeArea(
        child: Column(
          children: [
            const SignupBusinessHeader(),
            Expanded(
              child: SingleChildScrollView(
                child: Container(
                  color: backgroundColor,
                  padding: const EdgeInsets.all(padding16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text('사업자 정보 입력', style: headlineSmall),
                      const SizedBox(height: padding24),
                      const SignupBusinessNumber(),
                      const SizedBox(height: padding16),
                      const SignupOwnerName(),
                      const SizedBox(height: padding16),
                      const SignupPhoneNumber(),
                      const SizedBox(height: padding24),
                      CustomButton(
                        customButtonTheme: CustomButtonTheme.light,
                        text: '휴대폰 본인인증',
                        onPressed: () {},
                      ),
                      const SizedBox(height: padding64),
                      CustomButton(
                        customButtonTheme: CustomButtonTheme.primary,
                        text: '다음 단계로',
                        onPressed: () => context.pushReplacementNamed(
                          Routes.signupInformation.path,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
