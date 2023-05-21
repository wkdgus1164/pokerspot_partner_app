import 'package:flutter/material.dart';
import 'package:pokerspot_partner_app/common/constants/sizes.dart';
import 'package:pokerspot_partner_app/common/theme/color.dart';
import 'package:pokerspot_partner_app/common/theme/typography.dart';
import 'package:pokerspot_partner_app/ui/member/login/components/login_form.dart';
import 'package:pokerspot_partner_app/ui/member/login/components/login_header.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Header
              const LoginHeader(),

              // 로그인 폼
              LoginForm(
                onIDChanged: (String value) {},
                onPWChanged: (String value) {},
                onAutoLoginCheckboxChanged: () {},
                onAutoLoginChecked: true,
                onSignupButtonPressed: () {},
              ),
              const SizedBox(height: padding64),

              // 로그인 전 둘러보기
              OutlinedButton(
                onPressed: () {},
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text('로그인 전 둘러보기', style: label.copyWith(color: textColor)),
                    Icon(Icons.chevron_right, color: textColor),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
