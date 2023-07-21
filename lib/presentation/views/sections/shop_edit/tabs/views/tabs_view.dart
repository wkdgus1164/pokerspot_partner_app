import 'package:flutter/material.dart';
import 'package:pokerspot_partner_app/common/theme/color.dart';
import 'package:pokerspot_partner_app/presentation/providers/store_provider.dart';
import 'package:pokerspot_partner_app/presentation/views/sections/shop_edit/basic/views/basic_view.dart';
import 'package:pokerspot_partner_app/presentation/views/sections/shop_edit/etc/views/etc_view.dart';
import 'package:pokerspot_partner_app/presentation/views/sections/shop_edit/game/views/game_view.dart';
import 'package:pokerspot_partner_app/presentation/views/sections/shop_edit/operation/views/operation_view.dart';
import 'package:pokerspot_partner_app/presentation/widgets/dialogs/info_dialog/information_dialog_utils.dart';
import 'package:provider/provider.dart';

import '../../../../../../locator.dart';

class ShopEditTabsView extends StatelessWidget {
  const ShopEditTabsView({
    super.key,
    required this.storeId,
  });

  final String storeId;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 4,
      child: ChangeNotifierProvider<StoreProvider>(
        create: (_) {
          final provider =
              StoreProvider(locator(), locator(), locator(), storeId);
          provider.getStore();
          provider.getGames();
          return provider;
        },
        child: Consumer<StoreProvider>(builder: (_, provider, __) {
          if (provider.store == null) {
            return const Center(child: CircularProgressIndicator());
          }
          return Scaffold(
            appBar: AppBar(
              title: const Text('매장 정보 수정'),
              actions: [
                TextButton.icon(
                  icon: const Icon(
                    Icons.check_rounded,
                    color: Colors.white,
                  ),
                  onPressed: () async {
                    await provider.updateStore().then((value) {
                      if (value) {
                        showInformationDialog(
                            context: context, content: '수정되었습니다.');
                      } else {
                        showInformationDialog(
                            context: context,
                            title: '에러 발생',
                            content: '수정을 실패했습니다.');
                      }
                    });
                  },
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
          );
        }),
      ),
    );
  }
}
