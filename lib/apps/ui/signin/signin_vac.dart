import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pokerspot_partner_app/apps/global/components/p_text_field.dart';
import 'package:pokerspot_partner_app/apps/global/constants/assets.dart';
import 'package:pokerspot_partner_app/apps/global/constants/regexps.dart';

class SigninVac extends StatelessWidget {
  const SigninVac({
    super.key,
    required this.handleIdInputChange,
    required this.handlePwInputChange,
    required this.handleIdClearClick,
    required this.togglePwVisibilityClick,
    required this.handleSigninButtonClick,
    required this.handleForgetButtonClick,
  });

  final Function(String?) handleIdInputChange;
  final Function(String?) handlePwInputChange;

  final Function() handleIdClearClick;
  final Function() togglePwVisibilityClick;

  final Function() handleSigninButtonClick;
  final Function() handleForgetButtonClick;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('로그인')),
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 64,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SvgPicture.asset(
                  Assets.logoSplash.path,
                ),
                const SizedBox(height: 64),
                PTextField(
                  labelText: '아이디',
                  hintText: '로그인 아이디를 입력해주세요.',
                  handleChange: handleIdInputChange,
                  icon: Icons.close_rounded,
                  handleIconClick: handleIdClearClick,
                  inputFormatters: [
                    FilteringTextInputFormatter.allow(
                      Regexps.password,
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                PTextField(
                  labelText: '비밀번호',
                  hintText: '비밀번호를 입력해주세요.',
                  handleChange: handlePwInputChange,
                  icon: Icons.visibility_rounded,
                  handleIconClick: togglePwVisibilityClick,
                  obscureText: true,
                  inputFormatters: [
                    FilteringTextInputFormatter.allow(
                      Regexps.password,
                    ),
                  ],
                ),
                const SizedBox(height: 64),
                FilledButton(
                  onPressed: handleSigninButtonClick,
                  child: const Text('로그인'),
                ),
                TextButton(
                  onPressed: handleForgetButtonClick,
                  child: const Text('계정 정보를 잊으셨어요?'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
