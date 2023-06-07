import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pokerspot_partner_app/common/components/dialogs/picker_dialog.dart';
import 'package:pokerspot_partner_app/common/constants/sizes.dart';
import 'package:pokerspot_partner_app/common/routes/base/bottom_navigation.dart';
import 'package:pokerspot_partner_app/common/routes/base/member.dart';
import 'package:pokerspot_partner_app/common/theme/color.dart';
import 'package:pokerspot_partner_app/common/theme/typography.dart';
import 'package:pokerspot_partner_app/data/utils/logger.dart';
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
      showDialog(
        context: context,
        builder: (BuildContext context) => _buildStartTimePickerDialog(),
      );
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
              Consumer<TokenProvider>(builder: (_, __, ___) {
                return LoginForm(
                  onIDChanged: (value) {
                    _authProvider.id = value;
                  },
                  onPWChanged: (value) {
                    _authProvider.password = value;
                  },
                  onLogin: () async {
                    await _login();
                  },
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

  PickerDialog _buildStartTimePickerDialog() {
    return PickerDialog(
      onCancel: () {},
      onSubmit: () {},
      onItemChanged: (value) {
        Logger.d(value);
      },
      selections: const [
        '00:00',
        '00:30',
        '01:00',
        '01:30',
        '02:00',
        '02:30',
        '03:00',
        '03:30',
        '04:00',
        '04:30',
        '05:00',
        '05:30',
        '06:00',
        '06:30',
        '07:00',
        '07:30',
        '08:00',
        '08:30',
        '09:00',
        '09:30',
        '10:00',
        '10:30',
        '11:00',
        '11:30',
      ],
      title: '오픈시간 선택',
    );
  }
}
