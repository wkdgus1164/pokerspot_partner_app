import 'package:flutter/material.dart';
import 'package:pokerspot_partner_app/common/constants/sizes.dart';
import 'package:pokerspot_partner_app/common/theme/color.dart';

class CouponAdminInformation extends StatelessWidget {
  const CouponAdminInformation({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(padding16),
      decoration: BoxDecoration(color: lightColorScheme.surface),
      child: Column(
        children: [
          Row(
            children: [
              Icon(
                Icons.info_outline,
                size: 20,
                color: customColorScheme.onSurface3,
              ),
              const SizedBox(width: 4),
              Text(
                '쿠폰을 통해 예약을 늘릴 수 있습니다',
                style: Theme.of(context).textTheme.titleMedium!.copyWith(
                      color: customColorScheme.onSurface2,
                    ),
              ),
            ],
          ),
          const SizedBox(height: padding16),
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                '장점',
                style: Theme.of(context).textTheme.titleMedium!.copyWith(
                      color: Colors.black,
                    ),
              ),
              const SizedBox(height: padding10),
              Text(
                '· 유저용 앱 - 매장 리스트의 대표 사진 상단에 쿠폰 배너를 달아 드립니다.\n· 유저용 앱 - 매장 리스트의 매장명 우측에 직사각형 배너를 달아 드립니다.\n· 손님들의 매장 예약을 효과적으로 유도할 수 있습니다.',
                style: Theme.of(context).textTheme.bodySmall!.copyWith(
                      color: customColorScheme.onSurface3,
                    ),
              ),
            ],
          ),
          const SizedBox(height: padding16),
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                '사용 방법',
                style: Theme.of(context).textTheme.titleMedium!.copyWith(
                      color: Colors.black,
                    ),
              ),
              const SizedBox(height: padding10),
              Text(
                '· 쿠폰을 통해 예약한 손님들은 예약 관리 화면에서 구분할 수 있습니다.\n· 쿠폰을 통해 예약한 손님들이 매장을 방문할 경우 할인가를 적용해 주시면 됩니다.\n· 쿠폰 사용에 대한 관리 및 책임은 각 매장에 있습니다.',
                style: Theme.of(context).textTheme.bodySmall!.copyWith(
                      color: customColorScheme.onSurface3,
                    ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
