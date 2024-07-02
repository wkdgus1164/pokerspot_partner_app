import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pokerspot_partner_app/apps/ui/signup_info/form/form_view.dart';

class SignupInfoPage extends StatefulHookConsumerWidget {
  const SignupInfoPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SignupInfoPageState();
}

class _SignupInfoPageState extends ConsumerState<SignupInfoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('가입 정보 입력하기')),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const SignupInfoFormView(),
          Padding(
            padding: const EdgeInsets.all(16),
            child: FilledButton(
              onPressed: _handleSubmit,
              child: const Text('회원 가입하기'),
            ),
          ),
        ],
      ),
    );
  }

  void _handleSubmit() {}
}
