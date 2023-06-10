import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:pokerspot_partner_app/common/constants/sizes.dart';
import 'package:pokerspot_partner_app/presentation/views/intro/components/swiper1.dart';
import 'package:pokerspot_partner_app/presentation/views/intro/components/swiper2.dart';
import 'package:pokerspot_partner_app/presentation/views/intro/components/swiper3.dart';
import 'package:pokerspot_partner_app/presentation/views/intro/components/swiper4.dart';

Swiper slideSwiper(BuildContext context) {
  final swiperList = [
    slide1(context),
    slide2(context),
    slide3(context),
    slide4(context),
  ];

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
