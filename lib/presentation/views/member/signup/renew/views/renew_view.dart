import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pokerspot_partner_app/common/components/app_bar/app_bar.dart';
import 'package:pokerspot_partner_app/common/components/button/custom_button.dart';
import 'package:pokerspot_partner_app/common/constants/sizes.dart';
import 'package:pokerspot_partner_app/common/routes/base/member.dart';
import 'package:pokerspot_partner_app/common/theme/color.dart';
import 'package:pokerspot_partner_app/common/theme/typography.dart';

import '../../business/components/owner_name.dart';
import '../../business/components/phone_number.dart';
import '../../information/components/email.dart';
import '../../information/components/id.dart';
import '../../information/components/password.dart';
import '../../information/components/password_confirm.dart';

class SignupRenewView extends StatelessWidget {
  const SignupRenewView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        customAppBarLeftSide: CustomAppBarLeftSide.backButton,
        customAppBarRightSide: CustomAppBarRightSide.none,
        customAppBarCenter: CustomAppBarCenter.text,
        text: '회원가입',
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(1),
          child: Divider(color: borderColor, height: 1, thickness: 1),
        ),
      ),
      body: SafeArea(
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
                const SignupOwnerName(),
                const SizedBox(height: padding16),
                const SignupPhoneNumber(),
                const SizedBox(height: padding24),
                CustomButton(
                  customButtonTheme: CustomButtonTheme.light,
                  text: '휴대폰 본인인증',
                  onPressed: () {},
                ),
                const SizedBox(height: padding24),
                CustomButton(
                  customButtonTheme: CustomButtonTheme.primary,
                  text: '가입 완료',
                  onPressed: () => context.pushNamed(
                    MemberRoutes.signupSuccess.path,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
