import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pokerspot_partner_app/apps/ui/navigation/drawer/data.dart';
import 'package:pokerspot_partner_app/apps/ui/navigation/drawer/drawer_vac.dart';

class NavigationDrawerView extends StatefulHookConsumerWidget {
  const NavigationDrawerView({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      NavigationDrawerViewState();
}

class NavigationDrawerViewState extends ConsumerState<NavigationDrawerView> {
  @override
  Widget build(BuildContext context) {
    final stores = ref.watch(drawerStoresDataProvider);

    const String currentStoreImageUrl =
        'https://d1gfto9ehui3w0.cloudfront.net/A0037-0.png';
    const currnetStoreName = '몬스터 홀덤펍';
    const currentStoreAddress = '서울시 강남구 역삼동 123-456';

    return NavigationDrawerVac(
      currentStoreImageUrl: currentStoreImageUrl,
      currnetStoreName: currnetStoreName,
      currentStoreAddress: currentStoreAddress,
      stores: stores,
      handleStoreClick: _handleStoreClick,
      handleCreateStoreClick: _handleCreateStoreClick,
    );
  }

  void _handleStoreClick(String id) {}
  void _handleCreateStoreClick() {}
}
