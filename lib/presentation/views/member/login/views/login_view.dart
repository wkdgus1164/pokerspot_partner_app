import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pokerspot_partner_app/common/components/dialogs/info_dialog/information_dialog_utils.dart';
import 'package:pokerspot_partner_app/common/routes/base/bottom_navigation.dart';
import 'package:pokerspot_partner_app/locator.dart';
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
  final _authProvider = locator<AuthProvider>();
  final _tokenProvider = locator<TokenProvider>();

  Future<void> _login() async {
    final success = await _authProvider.login();
    if (success && context.mounted) {
      context.replaceNamed(BottomNavigationRoutes.home.path);
    } else {
      showInformationDialog(
        context: context,
        title: '로그인 실패',
        content: '입력하신 아이디 또는 비밀번호를 확인해 주세요.',
        confirmText: '확인',
        onConfirm: () {},
      );
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
              Consumer2<TokenProvider, AuthProvider>(
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
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
