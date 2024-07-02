import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pokerspot_partner_app/apps/global/global.dart';

class SignupVerifyPage extends StatefulHookConsumerWidget {
  const SignupVerifyPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _SignupVerifyPageState();
}

class _SignupVerifyPageState extends ConsumerState<SignupVerifyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('본인 인증하기')),
      body: Column(
        children: [
          Expanded(
            child: InAppWebView(
              initialUrlRequest: URLRequest(
                url: Uri.parse('https://www.naver.com'),
              ),
            ),
          ),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(16),
            child: FilledButton(
              onPressed: () {
                context.push(CustomRouter.signupInfo.path);
              },
              child: const Text('확인'),
            ),
          ),
        ],
      ),
    );
  }
}
