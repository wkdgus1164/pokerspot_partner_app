import 'package:flutter/material.dart';
import 'package:pokerspot_partner_app/presentation/views/main/sections/home/components/blind_buyin/blind_buyin.dart';
import 'package:pokerspot_partner_app/presentation/views/main/sections/home/components/header/store_header.dart';
import 'package:pokerspot_partner_app/presentation/views/main/sections/home/components/header/tab_header.dart';
import 'package:pokerspot_partner_app/presentation/views/main/sections/home/components/no_store.dart';
import 'package:pokerspot_partner_app/presentation/views/main/sections/home/components/notice/notice.dart';
import 'package:pokerspot_partner_app/presentation/views/main/sections/home/components/reservation/reservation.dart';
import 'package:pokerspot_partner_app/presentation/views/main/sections/home/components/store_list/store_list.dart';
import 'package:pokerspot_partner_app/presentation/views/main/sections/home/components/tournament/tournament.dart';

enum HomeType {
  none('none'),
  blindBuyIn('blind_buyin'),
  toner('toner'),
  all('all'),
  ;

  const HomeType(this.path);

  final String path;
}

/// HomeNotice : 공지사항
/// HomeNoStore : 등록된 매장 없음
/// HomeReservationStatus : 매장 예약 현황
/// HomeBlindBuyIn : 블라인드 및 바이인
/// HomeTournament : 매장 토너먼트 현황

/// 데이터가 어떻게 올지 몰라서 우선 ENUM TYPE 대로 조건부 렌더링만 진행함

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

  if (homeType == HomeType.all) {
    body.add(const HomeReservationStatus());
    body.add(const HomeTournament());
    body.add(const HomeNotice());
    body.add(const HomeStore());
    body.add(const HomeNoStore());
  }

  return body;
}

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const HomeType homeType = HomeType.all;

    return Scaffold(
      appBar: homeTabAppBar,
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
