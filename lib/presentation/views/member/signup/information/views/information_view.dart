import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pokerspot_partner_app/presentation/widgets/app_bar/app_bar.dart';
import 'package:pokerspot_partner_app/presentation/widgets/button/custom_button.dart';
import 'package:pokerspot_partner_app/common/constants/sizes.dart';
import 'package:pokerspot_partner_app/common/routes/base/member.dart';
import 'package:pokerspot_partner_app/common/theme/color.dart';

import '../components/email.dart';
import '../components/header.dart';
import '../components/id.dart';
import '../components/password.dart';
import '../components/password_confirm.dart';

class SignupInformationView extends StatelessWidget {
  const SignupInformationView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        left: CustomAppBarLeft.back,
        right: CustomAppBarRight.none,
        center: CustomAppBarCenter.text,
        text: '회원가입',
      ),
      body: SafeArea(
        child: Column(
          children: [
            const SignupInformationHeader(),
            Expanded(
              child: SingleChildScrollView(
                child: Container(
                  color: lightColorScheme.background,
                  padding: const EdgeInsets.all(padding16),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        '가입 정보 입력',
                        style: Theme.of(context).textTheme.headlineSmall,
                      ),
                      const SizedBox(height: padding24),
                      const SignupId(),
                      const SizedBox(height: padding16),
                      SignupPassword(
                        onTextFieldChanged: (String value) {},
                      ),
                      const SizedBox(height: padding16),
                      SignupPasswordConfirm(
                        onTextFieldChanged: (String value) {},
                      ),
                      const SizedBox(height: padding16),
                      SignupEmail(
                        onTextFieldChanged: (String value) {},
                      ),
                      const SizedBox(height: padding24),
                      CustomFilledButton(
                        theme: CustomFilledButtonTheme.primary,
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
          ],
        ),
      ),
    );
  }
}
