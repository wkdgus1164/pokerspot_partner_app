import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pokerspot_partner_app/common/constants/sizes.dart';
import 'package:pokerspot_partner_app/common/routes/base/bottom_navigation.dart';
import 'package:pokerspot_partner_app/common/routes/base/member.dart';
import 'package:pokerspot_partner_app/common/theme/color.dart';
import 'package:pokerspot_partner_app/common/theme/typography.dart';
import 'package:pokerspot_partner_app/locator.dart';
import 'package:pokerspot_partner_app/presentation/dialog/toast.dart';
import 'package:pokerspot_partner_app/presentation/providers/partner_provider.dart';
import 'package:pokerspot_partner_app/presentation/providers/token_provider.dart';

import '../components/login_form.dart';
import '../components/login_header.dart';

class LoginView extends StatelessWidget {
  LoginView({Key? key}) : super(key: key);

  final _partnerProvider = locator<PartnerProvider>();
  final _tokenProvider = locator<TokenProvider>();

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
                onIDChanged: (value) {
                  _partnerProvider.id = value;
                },
                onPWChanged: (value) {
                  _partnerProvider.password = value;
                },
                onLogin: () async {
                  final token = await _partnerProvider.getToken();
                  _tokenProvider.setToken(token);
                  final result = await _partnerProvider.getPartner(token);
                  if (result && context.mounted) {
                    context.replaceNamed(BottomNavigationRoutes.home.path);
                  } else {
                    showToast(context: context, message: '로그인 실패하였습니다.');
                  }
                },
                onAutoLoginCheckboxChanged: () {
                  /// TODO 자동 로그인
                },
                onAutoLoginChecked: true,
                onSignupButtonPressed: () {
                  context.pushNamed(MemberRoutes.signupRenewal.path);
                },
              ),
              const SizedBox(height: padding32),

              // 로그인 전 둘러보기
              OutlinedButton(
                style: OutlinedButton.styleFrom(
                  foregroundColor: Colors.grey.shade500,
                ),
                onPressed: () {
                  context.pushNamed(BottomNavigationRoutes.home.path);
                },
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text('로그인 전 둘러보기', style: label.copyWith(color: textColor)),
                    Icon(Icons.chevron_right, color: greyVariant3),
                  ],
                ),
              ),
              const SizedBox(height: padding64),
            ],
          ),
        ),
      ),
    );
  }
}
