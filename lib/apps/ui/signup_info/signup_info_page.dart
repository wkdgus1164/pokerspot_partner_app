import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:logger/logger.dart';
import 'package:pokerspot_partner_app/apps/global/exception/exceptions.dart';
import 'package:pokerspot_partner_app/apps/global/global.dart';
import 'package:pokerspot_partner_app/apps/infra/api/signup/input/signup_input.dart';
import 'package:pokerspot_partner_app/apps/infra/api/signup/signup_api.dart';
import 'package:pokerspot_partner_app/apps/ui/signup_info/form/form_view.dart';
import 'package:pokerspot_partner_app/apps/ui/signup_info/providers/data.dart';
import 'package:pokerspot_partner_app/common/full_screen_loading/loading.dart';

/// 회원가입 정보 입력 페이지
class SignupInfoPage extends StatefulHookConsumerWidget {
  const SignupInfoPage({super.key});

  @override
  ConsumerState<SignupInfoPage> createState() => _SignupInfoPageState();
}

class _SignupInfoPageState extends ConsumerState<SignupInfoPage> {
  bool _isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('가입 정보 입력하기')),
      body: Stack(
        children: [
          _buildContent(),
          if (_isLoading) const FullScreenLoading(),
        ],
      ),
    );
  }

  /// 메인 컨텐츠 영역
  Widget _buildContent() {
    final signupData = ref.watch(signupInfoDataProvider);
    final isValid = _validateSignupData(signupData);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const SignupInfoFormView(),
        Padding(
          padding: const EdgeInsets.all(16),
          child: FilledButton(
            onPressed: isValid && !_isLoading ? () => _handleSubmit() : null,
            child: const Text('회원 가입하기'),
          ),
        ),
      ],
    );
  }

  /// 회원가입 데이터 유효성 검사
  bool _validateSignupData(SignupInfoModel data) {
    return data.id.isNotEmpty &&
        data.password.isNotEmpty &&
        data.passwordConfirm.isNotEmpty &&
        data.password == data.passwordConfirm;
  }

  /// 회원가입 요청 처리
  Future _handleSubmit() async {
    if (!mounted) return;
    setState(() => _isLoading = true);

    final signupData = ref.read(signupInfoDataProvider);
    final response = await ref.read(signupApiProvider).signup(
          input: SignupInput(
            identifier: signupData.id,
            password: signupData.password,
          ),
        );

    if (!mounted) return;
    setState(() => _isLoading = false);

    response.when(
      success: (_, __, ___) => _handleSignupSuccess(),
      error: (error, message, _) => _handleSignupError(error, message),
    );
  }

  /// 회원가입 성공 처리
  void _handleSignupSuccess() {
    Fluttertoast.showToast(msg: '회원가입 완료!');
    context.go(CustomRouter.signin.path);
  }

  /// 회원가입 실패 처리
  void _handleSignupError(String error, String message) {
    if (error == DuplicateIdentifierException.error) {
      Fluttertoast.showToast(msg: DuplicateIdentifierException().message);
    }
  }
}
