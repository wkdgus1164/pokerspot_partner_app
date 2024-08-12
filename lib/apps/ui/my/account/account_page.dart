import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pokerspot_partner_app/apps/ui/my/account/account_vac.dart';

class MyAccountPage extends StatefulHookConsumerWidget {
  const MyAccountPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _MyAccountPageState();
}

class _MyAccountPageState extends ConsumerState<MyAccountPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('개인 정보 관리'),
      ),
      body: MyAccountVac(
        name: '홍길동',
        birth:
            '${DateTime.now().year}년 ${DateTime.now().month}월 ${DateTime.now().day}일',
        gender: '남자',
        handleButtonClick: _handleButtonClick,
      ),
    );
  }

  void _handleButtonClick() {}
}
