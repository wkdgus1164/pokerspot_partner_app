import 'package:flutter/material.dart';
import 'package:pokerspot_partner_app/common/theme/color.dart';
import 'package:pokerspot_partner_app/presentation/views/sections/shop_edit/basic/views/basic_view.dart';
import 'package:pokerspot_partner_app/presentation/views/sections/shop_edit/etc/views/etc_view.dart';
import 'package:pokerspot_partner_app/presentation/views/sections/shop_edit/game/views/game_view.dart';
import 'package:pokerspot_partner_app/presentation/views/sections/shop_edit/operation/views/operation_view.dart';

class ShopEditTabsView extends StatelessWidget {
  const ShopEditTabsView({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('매장 정보 수정'),
          actions: [
            TextButton.icon(
              icon: const Icon(
                Icons.check_rounded,
                color: Colors.white,
              ),
              onPressed: () {},
              label: const Text(
                '수정',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
        body: Column(
          children: [
            TabBar(
              labelColor: customColorScheme.onSurface2,
              indicatorColor: customColorScheme.onSurface2,
              tabs: const <Widget>[
                Tab(text: '기본정보'),
                Tab(text: '운영정보'),
                Tab(text: '게임정보'),
                Tab(text: '기타정보'),
              ],
            ),
            Divider(
              height: 1,
              thickness: 1,
              color: lightColorScheme.outline,
            ),
            const Expanded(
              child: TabBarView(
                children: <Widget>[
                  ShopEditBasicView(),
                  ShopEditOperationView(),
                  ShopEditGameView(),
                  ShopEditEtcView(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
