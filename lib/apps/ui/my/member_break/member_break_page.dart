import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pokerspot_partner_app/apps/global/global.dart';
import 'package:pokerspot_partner_app/apps/ui/my/member_break/components/since_time.dart';
import 'package:pokerspot_partner_app/common/checkbox/checkbox.dart';

class MyMemberBreakPage extends StatefulHookConsumerWidget {
  const MyMemberBreakPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _MyMemberBreakPageState();
}

class _MyMemberBreakPageState extends ConsumerState<MyMemberBreakPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('회원 탈퇴'),
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const MemberBreakSinceTimeBanner(),
                  const SizedBox(height: 32),
                  Text(
                    '회원 탈퇴하시면...',
                    style: textTheme.headlineSmall!.copyWith(
                      color: colorGrey20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 16),
                  Text(
                    '아래 사항들을 확인 후\n체크박스에 체크해주세요.',
                    style: textTheme.labelLarge!.copyWith(
                      color: colorGrey60,
                    ),
                  ),
                  const SizedBox(height: 16),
                  PCheckBoxListTile(
                    value: true,
                    onChanged: (v) {},
                    label: '포커스팟에 등록하신 모든 매장이 더이상 표시되지 않아요.',
                  ),
                  PCheckBoxListTile(
                    value: false,
                    onChanged: (v) {},
                    label: '포커스팟 파트너 앱을 사용할 수 없어요.',
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
              child: const Text('탈퇴하기'),
            ),
          ),
        ],
      ),
    );
  }
}
