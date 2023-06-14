import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pokerspot_partner_app/common/constants/assets.dart';

final List<String> defaultIcons = [
  Assets.homeOff.path,
  Assets.statisticsOff.path,
  Assets.reservationOff.path,
  Assets.shopOff.path,
  Assets.accountOff.path,
];

final List<String> selectedIcons = [
  Assets.homeOn.path,
  Assets.statisticsOn.path,
  Assets.reservationOn.path,
  Assets.shopOn.path,
  Assets.accountOn.path,
];

final List<String> labels = [
  '홈',
  '통계',
  '예약관리',
  '매장관리',
  '내정보',
];

List<BottomNavigationBarItem> bottomNavigationItems =
    defaultIcons.asMap().entries.map((entry) {
  int index = entry.key;

  return BottomNavigationBarItem(
    icon: SvgPicture.asset(defaultIcons[index]),
    activeIcon: SvgPicture.asset(selectedIcons[index]),
    label: labels[index],
  );
}).toList();
