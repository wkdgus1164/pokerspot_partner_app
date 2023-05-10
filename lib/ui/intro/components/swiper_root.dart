import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:pokerspot_partner_app/common/constants/sizes.dart';
import 'package:pokerspot_partner_app/ui/intro/components/swiper1.dart';
import 'package:pokerspot_partner_app/ui/intro/components/swiper2.dart';
import 'package:pokerspot_partner_app/ui/intro/components/swiper3.dart';
import 'package:pokerspot_partner_app/ui/intro/components/swiper4.dart';

final swiperList = [slide1(), slide2(), slide3(), slide4()];

Swiper slideSwiper() {
  SwiperPagination swiperPagination() {
    return SwiperPagination(
      alignment: Alignment.bottomCenter,
      margin: const EdgeInsets.all(padding64),
      builder: DotSwiperPaginationBuilder(
        color: Colors.grey.shade400,
        activeColor: Colors.black,
        space: padding10,
      ),
    );
  }

  return Swiper(
    itemBuilder: (_, idx) => swiperList[idx],
    indicatorLayout: PageIndicatorLayout.COLOR,
    itemCount: swiperList.length,
    pagination: swiperPagination(),
  );
}
