import 'package:flutter/material.dart';
import 'package:pokerspot_partner_app/ui/main/sections/home/components/blind_buyin/blind_buyin.dart';
import 'package:pokerspot_partner_app/ui/main/sections/home/components/header/store_header.dart';
import 'package:pokerspot_partner_app/ui/main/sections/home/components/header/tab_header.dart';
import 'package:pokerspot_partner_app/ui/main/sections/home/components/no_store.dart';
import 'package:pokerspot_partner_app/ui/main/sections/home/components/notice/notice.dart';
import 'package:pokerspot_partner_app/ui/main/sections/home/components/reservation/reservation.dart';
import 'package:pokerspot_partner_app/ui/main/sections/home/components/store_list/store_list.dart';
import 'package:pokerspot_partner_app/ui/main/sections/home/components/tournament/tournament.dart';

enum HomeType {
  none('none'),
  blindBuyIn('blind_buyin'),
  toner('toner'),
  ;

  const HomeType(this.path);

  final String path;
}

List<Widget> _buildBody(HomeType homeType) {
  List<Widget> body = [];

  if (homeType == HomeType.none) {
    body.add(const HomeNotice());
    body.add(const HomeNoStore());
  }

  if (homeType == HomeType.blindBuyIn) {
    body.add(const HomeReservationStatus());
    body.add(const HomeBlindBuyIn());
    body.add(const HomeNotice());
    body.add(const HomeStore());
  }

  if (homeType == HomeType.toner) {
    body.add(const HomeReservationStatus());
    body.add(const HomeTournament());
    body.add(const HomeNotice());
    body.add(const HomeStore());
  }

  return body;
}

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const HomeType homeType = HomeType.none;

    return Scaffold(
      appBar: appBar,
      body: SafeArea(
        child: Column(
          children: [
            const HomeStoreHeader(name: '몬스터 홀덤펍'),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: _buildBody(homeType).map((e) => e).toList(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
