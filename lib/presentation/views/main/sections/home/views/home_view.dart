import 'package:flutter/material.dart';
import 'package:pokerspot_partner_app/presentation/providers/home_provider.dart';
import 'package:pokerspot_partner_app/presentation/views/main/sections/home/components/header/tab_header.dart';
import 'package:pokerspot_partner_app/presentation/views/main/sections/home/components/no_store.dart';
import 'package:pokerspot_partner_app/presentation/views/main/sections/home/components/store_list/store_list.dart';
import 'package:provider/provider.dart';

enum HomeType {
  none('none'),
  blindBuyIn('blind_buyin'),
  toner('toner'),
  all('all'),
  ;

  const HomeType(this.path);

  final String path;
}

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: homeTabAppBar,
      body: SafeArea(
        child: Consumer<HomeProvider>(
          builder: (_, provider, __) {
            switch (provider.stores?.length) {
              case null:
                return const Center(child: CircularProgressIndicator());
              case 0:
                return const Center(child: HomeNoStore());
              default:
                return HomeStore(
                  storeList: provider.stores ?? [],
                );
            }
          },
        ),
      ),
    );
  }
}
