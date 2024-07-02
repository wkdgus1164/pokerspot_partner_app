import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:lottie/lottie.dart';
import 'package:pokerspot_partner_app/apps/global/global.dart';

class SignupIntroPage extends StatefulHookConsumerWidget {
  const SignupIntroPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _SignupIntroPageState();
}

class _SignupIntroPageState extends ConsumerState<SignupIntroPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('회원가입'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              '안전한 회원가입을 위해\n본인 인증이 필요해요',
              style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                    fontWeight: FontWeight.bold,
                    color: colorGrey20,
                  ),
            ),
            const SizedBox(height: 16),
            Text(
              '본인인증 데이터는 업주 실명 정보를 확인하기 위해 사용되며\n회원가입 이후 마이페이지에서 얼마든지 변경할 수 있어요.\n동일한 휴대폰 번호로는 한 계정만 생성할 수 있어요.',
              style: Theme.of(context).textTheme.labelLarge!.copyWith(
                    color: colorGrey60,
                  ),
            ),
            const SizedBox(height: 16),
            Expanded(
              child: Center(
                child: Lottie.asset(
                  Assets.verify.path,
                  width: MediaQuery.of(context).size.width * 0.8,
                ),
              ),
            ),
            const SizedBox(height: 16),
            Text(
              textAlign: TextAlign.center,
              '본인 인증하기를 클릭하시면\n개인정보 제3자 제공 약관에 동의하시게 돼요',
              style: Theme.of(context).textTheme.labelMedium!.copyWith(
                    color: colorGrey60,
                  ),
            ),
            const SizedBox(height: 16),
            FilledButton(
              onPressed: () {},
              child: const Text('본인 인증하기'),
            ),
          ],
        ),
      ),
    );
  }
}
