import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pokerspot_partner_app/apps/global/global.dart';

class MyPasswordPage extends StatefulHookConsumerWidget {
  const MyPasswordPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _MyPasswordPageState();
}

class _MyPasswordPageState extends ConsumerState<MyPasswordPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('비밀번호 변경'),
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    '새 비밀번호를\n설정할게요',
                    style: textTheme.headlineSmall!.copyWith(
                      color: colorGrey20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 16),
                  Text(
                    '새로운 비밀번호는 기존 비밀번호와 달라야 해요.\n비밀번호를 변경한 후 바로 새로운 비밀번호로 로그인할 수 있어요.',
                    style: textTheme.labelLarge!.copyWith(
                      color: colorGrey60,
                    ),
                  ),
                  const SizedBox(height: 16),
                  PTextField(
                    labelText: '기존 비밀번호',
                    hintText: '기존 비밀번호를 입력해주세요',
                    handleChange: (v) {},
                    icon: Icons.visibility_off_rounded,
                    obscureText: true,
                  ),
                  const SizedBox(height: 16),
                  PTextField(
                    labelText: '기존 비밀번호',
                    hintText: '기존 비밀번호를 입력해주세요',
                    handleChange: (v) {},
                    icon: Icons.visibility_off_rounded,
                    obscureText: true,
                  ),
                  const SizedBox(height: 16),
                  PTextField(
                    labelText: '기존 비밀번호',
                    hintText: '기존 비밀번호를 입력해주세요',
                    handleChange: (v) {},
                    icon: Icons.visibility_off_rounded,
                    obscureText: true,
                  ),
                ],
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(16),
            width: double.infinity,
            child: FilledButton(
              onPressed: () {},
              child: const Text('변경하기'),
            ),
          ),
        ],
      ),
    );
  }
}
