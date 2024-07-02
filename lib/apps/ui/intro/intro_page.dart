import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pokerspot_partner_app/apps/global/global.dart';

class IntroPage extends StatefulHookConsumerWidget {
  const IntroPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _IntroPageState();
}

class _IntroPageState extends ConsumerState<IntroPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Expanded(
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      const SizedBox(height: 32),
                      Image.asset(
                        Assets.mockupIntro.path,
                        fit: BoxFit.cover,
                        width: MediaQuery.of(context).size.width * 0.8,
                      ),
                    ],
                  ),
                  Container(
                    padding: const EdgeInsets.all(32),
                    decoration: const BoxDecoration(
                      color: colorGrey100,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(16),
                        topRight: Radius.circular(16),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0x1E000000),
                          blurRadius: 40,
                          offset: Offset(0, 0),
                          spreadRadius: 0,
                        ),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          '내 홀덤 매장 관리와 홍보\n이제 앱으로 간편하게',
                          style: Theme.of(context)
                              .textTheme
                              .headlineSmall!
                              .copyWith(
                                fontWeight: FontWeight.bold,
                                color: colorGrey20,
                              ),
                        ),
                        const SizedBox(height: 32),
                        Text(
                          '매장 정보 관리\n토너먼트 정보 실시간 관리\n오픈채팅방 링크 연결\n그리고 자동 홍보까지\n\n이제 포커스팟에서 한 번에 할 수 있어요.',
                          style:
                              Theme.of(context).textTheme.bodyLarge!.copyWith(
                                    color: colorGrey50,
                                  ),
                        ),
                        const SizedBox(height: 32),
                        FilledButton(
                          onPressed: () {},
                          child: const Text('시작하기'),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: const Text('이미 계정이 있어요'),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
