import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pokerspot_partner_app/common/components/app_bar/app_bar.dart';
import 'package:pokerspot_partner_app/common/components/button/custom_button.dart';
import 'package:pokerspot_partner_app/common/constants/sizes.dart';
import 'package:pokerspot_partner_app/common/routes/routes.dart';
import 'package:pokerspot_partner_app/common/theme/color.dart';
import 'package:pokerspot_partner_app/common/theme/typography.dart';
import 'package:pokerspot_partner_app/ui/signup/information/components/email.dart';
import 'package:pokerspot_partner_app/ui/signup/information/components/header.dart';
import 'package:pokerspot_partner_app/ui/signup/information/components/id.dart';
import 'package:pokerspot_partner_app/ui/signup/information/components/password.dart';
import 'package:pokerspot_partner_app/ui/signup/information/components/password_confirm.dart';

class SignupInformationView extends StatelessWidget {
  const SignupInformationView({super.key});

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
            const SignupInformationHeader(),
            Expanded(
              child: SingleChildScrollView(
                child: Container(
                  color: backgroundColor,
                  padding: const EdgeInsets.all(padding16),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text('가입 정보 입력', style: headlineSmall),
                      const SizedBox(height: padding24),
                      const SignupId(),
                      const SizedBox(height: padding16),
                      const SignupPassword(),
                      const SizedBox(height: padding16),
                      const SignupPasswordConfirm(),
                      const SizedBox(height: padding16),
                      const SignupEmail(),
                      const SizedBox(height: padding24),
                      CustomButton(
                        customButtonTheme: CustomButtonTheme.primary,
                        text: '가입 완료',
                        onPressed: () => context.pushReplacementNamed(
                          Routes.signupSuccess.path,
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
