import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pokerspot_partner_app/common/constants/sizes.dart';
import 'package:pokerspot_partner_app/common/routes/base/bottom_navigation.dart';
import 'package:pokerspot_partner_app/common/routes/base/member.dart';
import 'package:pokerspot_partner_app/common/theme/color.dart';
import 'package:pokerspot_partner_app/locator.dart';
import 'package:pokerspot_partner_app/presentation/dialog/toast.dart';
import 'package:pokerspot_partner_app/presentation/providers/auth_provider.dart';
import 'package:pokerspot_partner_app/presentation/providers/token_provider.dart';
import 'package:provider/provider.dart';

import '../components/login_form.dart';
import '../components/login_header.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final _authProvider = locator<AuthProviderProvider>();
  final _tokenProvider = locator<TokenProvider>();

  Future<void> _login() async {
    final success = await _authProvider.login();
    if (success && context.mounted) {
      context.replaceNamed(BottomNavigationRoutes.home.path);
    } else {
      showToast(context: context, message: '로그인 실패하였습니다.');
    }
  }

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
              Consumer2<TokenProvider, AuthProviderProvider>(
                  builder: (_, __, ___, ____) {
                return LoginForm(
                  onIDChanged: _authProvider.setId,
                  onPWChanged: _authProvider.setPassword,
                  onLogin: _authProvider.validate
                      ? () async {
                          await _login();
                        }
                      : null,
                  onAutoLoginCheckboxChanged: () async {
                    await _tokenProvider.setIsAutoLogin();
                  },
                  onAutoLoginChecked: _tokenProvider.isAutoLogin,
                  onSignupButtonPressed: () {
                    context.pushNamed(MemberRoutes.signupRenewal.path);
                  },
                );
              }),
              const SizedBox(height: padding32),

              // 로그인 전 둘러보기
              OutlinedButton(
                style: OutlinedButton.styleFrom(
                  side: BorderSide(color: customColorScheme.onSurface4),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100),
                  ),
                ),
                onPressed: () {
                  context.pushNamed(BottomNavigationRoutes.home.path);
                },
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      '로그인 전 둘러보기',
                      style: Theme.of(context).textTheme.labelLarge!.copyWith(
                            color: customColorScheme.onSurface3,
                          ),
                    ),
                    Icon(
                      Icons.chevron_right,
                      color: customColorScheme.onSurface4,
                    ),
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
