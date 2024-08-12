import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pokerspot_partner_app/apps/global/global.dart';
import 'package:pokerspot_partner_app/apps/ui/my/main/main_vac.dart';

class MyMainPage extends StatefulHookConsumerWidget {
  const MyMainPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _MyMainPageState();
}

class _MyMainPageState extends ConsumerState<MyMainPage> {
  final String _name = '홍길동';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('$_name님'),
      ),
      body: MyMainVac(
        handleAccountClick: () {
          context.push(CustomRouter.myAccount.path);
        },
        handlePasswordChangeClick: () {},
        handleSignOutClick: () {},
        handleMemberBreakClick: () {},
      ),
    );
  }
}
