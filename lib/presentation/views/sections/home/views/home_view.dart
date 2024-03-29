import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:pokerspot_partner_app/common/constants/assets.dart';
import 'package:pokerspot_partner_app/common/routes/routes.dart';
import 'package:pokerspot_partner_app/locator.dart';
import 'package:pokerspot_partner_app/presentation/providers/home_provider.dart';
import 'package:pokerspot_partner_app/presentation/providers/notice_provider.dart';
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
    locator<HomeProvider>().init();

    return Scaffold(
      appBar: AppBar(
        title: SvgPicture.asset(Assets.poker.path),
        actions: [
          IconButton(
            onPressed: () => context.push(CustomRouter.homeNotification.path),
            icon: const Icon(Icons.notifications_none_outlined),
          ),
        ],
      ),
      body: SafeArea(
        child: ChangeNotifierProvider<NoticeProvider>(
          create: (_) => locator(),
          child: Consumer2<HomeProvider, NoticeProvider>(
            builder: (_, provider, nProvider, __) {
              switch (provider.stores?.length) {
                case null:
                case 0:
                  return const Center(child: NoStore());
                default:
                  return SingleChildScrollView(
                    child: Column(
                      children: [
                        HomeStoreHeader(
                            name: provider.selectedStore?.name ?? ''),
                        HomeReservation(
                          data: provider.reservationsStatusCount,
                        ),
                        if (provider.games.isNotEmpty)
                          HomeTournament(games: provider.games),
                        if (provider.coupons.isNotEmpty)
                          HomeCoupon(coupons: provider.coupons),
                        const CustomDivider(),
                        HomeNotice(notices: nProvider.notices),
                        HomeStore(storeList: provider.stores ?? []),
                      ],
                    ),
                  );
              }
            },
          ),
        ),
      ),
    );
  }
}
