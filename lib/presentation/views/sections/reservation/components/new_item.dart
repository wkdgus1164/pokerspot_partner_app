import 'package:flutter/material.dart';
import 'package:pokerspot_partner_app/common/constants/sizes.dart';
import 'package:pokerspot_partner_app/common/theme/color.dart';
import 'package:pokerspot_partner_app/presentation/effects/card_shadow.dart';
import 'package:pokerspot_partner_app/presentation/widgets/button/custom_button.dart';
import 'package:pokerspot_partner_app/presentation/widgets/button/custom_outlined_button.dart';

enum Status {
  waiting('waiting'),
  complete('complete'),
  ;

  const Status(this.status);

  final String status;
}

enum UserType {
  vip('vip'),
  common('common'),
  black('black'),
  ;

  const UserType(this.userType);

  final String userType;
}

class ReservationItem extends StatelessWidget {
  const ReservationItem({
    super.key,
    required this.date,
    required this.status,
    required this.reservedAt,
    required this.time,
    required this.count,
    required this.isCoupon,
    required this.shopName,
    required this.userNickname,
    required this.userType,
  });

  final String date;
  final Status status;
  final int reservedAt;
  final String time;
  final String count;
  final bool isCoupon;
  final String shopName;
  final String userNickname;
  final UserType userType;

  String setStatus(Status status) {
    switch (status) {
      case Status.waiting:
        return '접수대기';
      case Status.complete:
        return '접수완료';
      default:
        return '알수없음';
    }
  }

  String setUserType(UserType userType) {
    switch (userType) {
      case UserType.black:
        return '블랙리스트';
      case UserType.vip:
        return '단골손님';
      default:
        return '';
    }
  }

  Color setUserTypeColor(UserType userType) {
    switch (userType) {
      case UserType.black:
        return lightColorScheme.error;
      case UserType.vip:
        return lightColorScheme.primary;
      default:
        return Colors.white;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(padding16),
      padding: const EdgeInsets.all(padding16),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          side: BorderSide(color: lightColorScheme.outline),
          borderRadius: BorderRadius.circular(12),
        ),
        shadows: [cardShadow],
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '$date · 접수대기',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodySmall!.copyWith(
                      color: customColorScheme.onSurface3,
                    ),
              ),
              const SizedBox(width: padding10),
              Text(
                '$reservedAt분 전',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodySmall!.copyWith(
                      color: customColorScheme.onSurface3,
                    ),
              ),
            ],
          ),
          const SizedBox(height: padding16),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Text(
                    time,
                    style: Theme.of(context).textTheme.titleLarge!.copyWith(
                          fontWeight: FontWeight.bold,
                          color: customColorScheme.onSurface1,
                        ),
                  ),
                  const SizedBox(width: padding10),
                  Text(
                    '$count명',
                    style: Theme.of(context).textTheme.titleLarge!.copyWith(
                          fontWeight: FontWeight.bold,
                          color: customColorScheme.onSurface1,
                        ),
                  ),
                  const SizedBox(width: padding10),
                  if (isCoupon) ...[
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 6,
                      ),
                      decoration: ShapeDecoration(
                        color: lightColorScheme.primary,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(2),
                        ),
                      ),
                      child: Row(
                        children: [
                          Text(
                            '쿠폰 사용',
                            style: Theme.of(context)
                                .textTheme
                                .labelLarge!
                                .copyWith(
                                  fontWeight: FontWeight.bold,
                                  color: lightColorScheme.onPrimary,
                                ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ],
              ),
              const SizedBox(width: padding10),
              Text(
                shopName,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.titleSmall!.copyWith(
                      color: customColorScheme.onSurface2,
                    ),
              ),
            ],
          ),
          const SizedBox(height: padding16),
          const Divider(height: 1, thickness: 1),
          const SizedBox(height: padding16),
          Row(
            children: [
              Icon(Icons.person, color: customColorScheme.onSurface4),
              const SizedBox(width: padding10),
              Row(
                children: [
                  Text(
                    userNickname,
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.titleSmall!.copyWith(
                          color: customColorScheme.onSurface2,
                        ),
                  ),
                  const SizedBox(width: 4),
                  Text(
                    setUserType(userType),
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.titleSmall!.copyWith(
                          color: setUserTypeColor(userType),
                        ),
                  ),
                ],
              ),
            ],
          ),
          if (status == Status.waiting) ...[
            Column(
              children: [
                const SizedBox(height: padding16),
                Row(
                  children: [
                    Expanded(
                      child: CustomOutlinedButton(
                        onPressed: () {},
                        text: '거절',
                        theme: CustomOutlinedButtonTheme.secondary,
                      ),
                    ),
                    const SizedBox(width: padding16),
                    Expanded(
                      child: CustomFilledButton(
                        text: '접수',
                        onPressed: () {},
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ],
      ),
    );
  }
}
