import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:pokerspot_partner_app/common/constants/assets.dart';
import 'package:pokerspot_partner_app/common/routes/base/home.dart';
import 'package:pokerspot_partner_app/presentation/providers/home_provider.dart';
import 'package:pokerspot_partner_app/presentation/views/common/no_store.dart';
import 'package:pokerspot_partner_app/presentation/views/sections/home/components/coupon/coupon.dart';
import 'package:pokerspot_partner_app/presentation/views/sections/home/components/header/store_header.dart';
import 'package:pokerspot_partner_app/presentation/views/sections/home/components/notice/notice.dart';
import 'package:pokerspot_partner_app/presentation/views/sections/home/components/reservation/reservation.dart';
import 'package:pokerspot_partner_app/presentation/views/sections/home/components/store_list/store_list.dart';
import 'package:pokerspot_partner_app/presentation/views/sections/home/components/tournament/tournament.dart';
import 'package:pokerspot_partner_app/presentation/widgets/divider/divider.dart';
import 'package:provider/provider.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: SvgPicture.asset(Assets.poker.path),
        actions: [
          IconButton(
            onPressed: () => context.pushNamed(HomeRoutes.notifiaction.path),
            icon: const Icon(Icons.notifications_none_outlined),
          ),
        ],
      ),
      body: SafeArea(
        child: Consumer<HomeProvider>(
          builder: (_, provider, __) {
            switch (provider.stores?.length) {
              case null:
              case 0:
                return const Center(child: NoStore());
              default:
                return SingleChildScrollView(
                  child: Column(
                    children: [
                      HomeStoreHeader(name: provider.selectedStore?.name ?? ''),
                      HomeReservation(
                        data: provider.reservationsStatusCount,
                      ),
                      HomeTournament(games: provider.games),
                      HomeCoupon(coupons: provider.coupons),
                      const CustomDivider(),
                      const HomeNotice(),
                      HomeStore(storeList: provider.stores ?? []),
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
