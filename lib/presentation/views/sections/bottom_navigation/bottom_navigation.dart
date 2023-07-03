import 'package:flutter/material.dart';
import 'package:pokerspot_partner_app/common/theme/color.dart';
import 'package:pokerspot_partner_app/presentation/views/sections/bottom_navigation/destinations.dart';
import 'package:pokerspot_partner_app/presentation/views/sections/home/views/home_view.dart';
import 'package:pokerspot_partner_app/presentation/views/sections/mypage/views/mypage/mypage_view.dart';
import 'package:pokerspot_partner_app/presentation/views/sections/reservation/views/reservation_view.dart';
import 'package:pokerspot_partner_app/presentation/views/sections/shop/views/shop_view.dart';
import 'package:pokerspot_partner_app/presentation/views/sections/statistics/views/statistics_view.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({Key? key}) : super(key: key);

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int currentPageIndex = 0;

  List<Widget> bodyList = [
    const HomeView(),
    const StatisticsView(),
    const ReservationView(),
    const ShopView(),
    const MypageView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border(
            top: BorderSide(
              color: lightColorScheme.outlineVariant,
              width: 1,
            ),
          ),
        ),
        child: BottomNavigationBar(
          currentIndex: currentPageIndex,
          items: bottomNavigationItems,
          onTap: (index) => setState(() => currentPageIndex = index),
        ),
      ),
      body: bodyList[currentPageIndex],
    );
  }
}
