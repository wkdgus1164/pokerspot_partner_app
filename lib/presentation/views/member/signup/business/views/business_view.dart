import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pokerspot_partner_app/presentation/widgets/app_bar/app_bar.dart';
import 'package:pokerspot_partner_app/presentation/widgets/button/custom_button.dart';
import 'package:pokerspot_partner_app/common/constants/sizes.dart';
import 'package:pokerspot_partner_app/common/routes/base/member.dart';
import 'package:pokerspot_partner_app/common/theme/color.dart';

import '../components/business_number.dart';
import '../components/header.dart';
import '../components/owner_name.dart';
import '../components/phone_number.dart';

class SignupBusinessView extends StatelessWidget {
  const SignupBusinessView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        left: Icons.keyboard_arrow_left,
        text: '회원가입',
      ),
      body: SafeArea(
        child: Column(
          children: [
            const SignupBusinessHeader(),
            Expanded(
              child: SingleChildScrollView(
                child: Container(
                  color: lightColorScheme.background,
                  padding: const EdgeInsets.all(padding16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        '사업자 정보 입력',
                        style: Theme.of(context).textTheme.headlineSmall,
                      ),
                      const SizedBox(height: padding24),
                      const SignupBusinessNumber(),
                      const SizedBox(height: padding16),
                      SignupOwnerName(
                        onTextFieldChanged: (String value) {},
                      ),
                      const SizedBox(height: padding16),
                      SignupPhoneNumber(
                        onTextFieldChanged: (String value) {},
                      ),
                      const SizedBox(height: padding24),
                      CustomFilledButton(
                        theme: CustomFilledButtonTheme.secondary,
                        text: '휴대폰 본인인증',
                        onPressed: () {},
                      ),
                      const SizedBox(height: padding64),
                      CustomFilledButton(
                        theme: CustomFilledButtonTheme.primary,
                        text: '다음 단계로',
                        onPressed: () {
                          context.pushNamed(
                            MemberRoutes.signupInformation.path,
                          );
                        },
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
