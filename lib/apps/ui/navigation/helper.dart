import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pokerspot_partner_app/apps/global/global.dart';
import 'package:pokerspot_partner_app/apps/ui/game/list/list_page.dart';
import 'package:pokerspot_partner_app/apps/ui/statistics/statistics_page.dart';
import 'package:pokerspot_partner_app/apps/ui/store_main/store_main_page.dart';

final List<String> _defaultIcons = [
  Assets.bnStatisticsOff.path,
  Assets.bnGameOff.path,
  Assets.bnStoreOff.path,
  Assets.bnMyOff.path,
];

final List<String> _selectedIcons = [
  Assets.bnStatisticsOn.path,
  Assets.bnGameOn.path,
  Assets.bnStoreOn.path,
  Assets.bnMyOn.path,
];

final List<String> _labels = [
  '통계',
  '토너관리',
  '매장관리',
  '내정보',
];

class NavigationHelper {
  NavigationHelper._privateConstructor();
  static final NavigationHelper _instance =
      NavigationHelper._privateConstructor();
  factory NavigationHelper() => _instance;

  List<Widget> pages = [
    const StatisticsPage(),
    const GameListPage(),
    const StoreMainPage(),
    const Center(child: CircularProgressIndicator.adaptive()),
  ];

  List<BottomNavigationBarItem> getBottomNavigationItems() {
    return _defaultIcons.asMap().entries.map(
      (entry) {
        int index = entry.key;

        return BottomNavigationBarItem(
          icon: SvgPicture.asset(
            _defaultIcons[index],
            colorFilter: const ColorFilter.mode(colorGrey80, BlendMode.srcIn),
          ),
          activeIcon: SvgPicture.asset(
            _selectedIcons[index],
            colorFilter: const ColorFilter.mode(colorGrey20, BlendMode.srcIn),
          ),
          label: _labels[index],
        );
      },
    ).toList();
  }
}
