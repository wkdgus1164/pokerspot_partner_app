import 'package:flutter/material.dart';
import 'package:pokerspot_partner_app/presentation/providers/home_provider.dart';
import 'package:pokerspot_partner_app/presentation/views/main/sections/home/components/coupon/coupon.dart';
import 'package:pokerspot_partner_app/presentation/views/main/sections/home/components/no_store.dart';
import 'package:pokerspot_partner_app/presentation/views/main/sections/home/components/notice/notice.dart';
import 'package:pokerspot_partner_app/presentation/views/main/sections/home/components/reservation/reservation.dart';
import 'package:pokerspot_partner_app/presentation/views/main/sections/home/components/store_list/store_list.dart';
import 'package:pokerspot_partner_app/presentation/views/main/sections/home/components/tournament/tournament.dart';
import 'package:pokerspot_partner_app/presentation/widgets/app_bar/app_bar.dart';
import 'package:pokerspot_partner_app/presentation/widgets/divider/divider.dart';
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
      appBar: CustomAppBar(
        isCenterLogo: true,
        isLeftButton: false,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.notifications_none_outlined,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: Consumer<HomeProvider>(
          builder: (_, provider, __) {
            switch (provider.stores?.length) {
              case null:
              case 0:
                return const Center(child: HomeNoStore());
              default:
                return SingleChildScrollView(
                  child: Column(
                    children: [
                      const HomeReservation(),
                      const HomeTournament(),
                      const HomeCoupon(),
                      const CustomDivider(),
                      const HomeNotice(),
                      HomeStore(
                        storeList: provider.stores ?? [],
                      ),
                    ],
                  ),
                );
            }
          },
        ),
      ),
    );
  }
}
