import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:logger/logger.dart';
import 'package:pokerspot_partner_app/apps/global/global.dart';
import 'package:pokerspot_partner_app/apps/infra/api/signup/dto/signup_dto.dart';
import 'package:pokerspot_partner_app/apps/infra/api/signup/input/signup_input.dart';
import 'package:pokerspot_partner_app/apps/infra/api/signup/signup_api.dart';
import 'package:pokerspot_partner_app/apps/ui/signup_info/form/form_view.dart';
import 'package:pokerspot_partner_app/apps/ui/signup_info/providers/data.dart';

class SignupInfoPage extends StatefulHookConsumerWidget {
  const SignupInfoPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SignupInfoPageState();
}

class _SignupInfoPageState extends ConsumerState<SignupInfoPage> {
  bool _isLoading = false;

  @override
  Widget build(BuildContext context) {
    // ID
    final id = ref.watch(signupInfoDataProvider).id;

    // PW
    final pw = ref.watch(signupInfoDataProvider).password;
    final pwConfirm = ref.watch(signupInfoDataProvider).passwordConfirm;

    final handleSubmit = !_isLoading &&
            pw.isNotEmpty &&
            pwConfirm.isNotEmpty &&
            id.isNotEmpty &&
            pw == pwConfirm
        ? _handleSubmit
        : null;

    return Scaffold(
      appBar: AppBar(title: const Text('가입 정보 입력하기')),
      body: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SignupInfoFormView(),
              Padding(
                padding: const EdgeInsets.all(16),
                child: FilledButton(
                  onPressed: handleSubmit,
                  child: const Text('회원 가입하기'),
                ),
              ),
            ],
          ),
          if (_isLoading)
            const Center(
              child: CircularProgressIndicator(),
            ),
        ],
      ),
    );
  }

  Future<void> _handleSubmit() async {
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
      success: (data, message, timestamp) async {
        await showAdaptiveDialog(
          context: context,
          builder: (context) {
            return AlertDialog.adaptive(
              title: const Text('회원가입 완료!'),
              content: const Text('로그인하고 바로 매장을 등록해보세요.'),
              actions: [
                TextButton(
                  onPressed: () {
                    context.go(CustomRouter.signin.path);
                  },
                  child: const Text('로그인'),
                ),
              ],
            );
          },
        );
      },
      error: (error, message, timestamp) {
        String errorMessage = message;
        if (error == 'DUPLICATE_IDENTIFIER') {
          errorMessage = '이미 등록된 이메일입니다.';
        }

        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(errorMessage),
            behavior: SnackBarBehavior.floating,
          ),
        );
      },
    );
  }
}
