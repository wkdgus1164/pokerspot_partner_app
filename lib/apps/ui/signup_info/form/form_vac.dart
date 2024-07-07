import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pokerspot_partner_app/apps/global/constants/regexps.dart';
import 'package:pokerspot_partner_app/apps/global/global.dart';

class SignupInfoFormVac extends StatelessWidget {
  const SignupInfoFormVac({
    super.key,
    required this.handleIdChange,
    required this.handlePasswordChange,
    required this.handlePasswordConfirmChange,
    required this.handleTermClick,
    required this.handleIdClearClick,
    this.isPwVisible = false,
    this.isPwConfirmVisible = false,
    required this.togglePwVisibilityClick,
    required this.togglePwConfirmVisibilityClick,
  });

  final Function(String?) handleIdChange;
  final Function() handleIdClearClick;

  final bool isPwVisible;
  final bool isPwConfirmVisible;

  final Function() togglePwVisibilityClick;
  final Function() togglePwConfirmVisibilityClick;

  final Function(String?) handlePasswordChange;
  final Function(String?) handlePasswordConfirmChange;
  final Function() handleTermClick;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              '로그인 시 사용하실\n계정 정보를 입력해주세요',
              style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                    fontWeight: FontWeight.bold,
                    color: colorGrey20,
                  ),
            ),
            const SizedBox(height: 16),
            Text(
              '아이디는 설정 이후 변경할 수 없어요.',
              style: Theme.of(context).textTheme.labelLarge!.copyWith(
                    color: colorGrey60,
                  ),
            ),
            const SizedBox(height: 16),
            PTextField(
              labelText: '아이디',
              hintText: '로그인 아이디를 입력해주세요.',
              icon: Icons.close_rounded,
              handleChange: handleIdChange,
              autofocus: true,
              handleIconClick: handleIdClearClick,
              inputFormatters: [
                FilteringTextInputFormatter.allow(
                  Regexps.id,
                ),
              ],
            ),
            const SizedBox(height: 16),
            PTextField(
              labelText: '비밀번호',
              hintText: '비밀번호를 입력해주세요.',
              obscureText: !isPwVisible,
              handleChange: handlePasswordChange,
              handleIconClick: togglePwVisibilityClick,
              icon: isPwVisible
                  ? Icons.visibility_rounded
                  : Icons.visibility_off_rounded,
              inputFormatters: [
                FilteringTextInputFormatter.allow(
                  Regexps.password,
                ),
              ],
            ),
            const SizedBox(height: 16),
            PTextField(
              labelText: '비밀번호 확인',
              hintText: '비밀번호를 한번 더 입력해주세요.',
              obscureText: !isPwConfirmVisible,
              icon: isPwConfirmVisible
                  ? Icons.visibility_rounded
                  : Icons.visibility_off_rounded,
              handleIconClick: togglePwConfirmVisibilityClick,
              handleChange: handlePasswordConfirmChange,
              inputFormatters: [
                FilteringTextInputFormatter.allow(
                  Regexps.password,
                ),
              ],
            ),
            const SizedBox(height: 16),
            Ink(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: colorGrey95,
              ),
              child: InkWell(
                onTap: handleTermClick,
                splashColor: colorGrey90,
                borderRadius: BorderRadius.circular(12),
                child: Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: Text(
                          '회원 가입하기를 클릭하시면 서비스 이용약관과 개인정보 처리방침에 동의하시게 돼요',
                          style:
                              Theme.of(context).textTheme.labelMedium!.copyWith(
                                    color: colorGrey60,
                                  ),
                        ),
                      ),
                      const SizedBox(width: 16),
                      const Icon(
                        Icons.chevron_right_rounded,
                        color: colorGrey80,
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
