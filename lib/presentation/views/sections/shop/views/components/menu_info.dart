import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:pokerspot_partner_app/common/constants/sizes.dart';
import 'package:pokerspot_partner_app/common/theme/color.dart';

class ShopCardMenuInfo extends StatelessWidget {
  const ShopCardMenuInfo({
    super.key,
    required this.title,
    required this.type,
    required this.status,
    required this.thumbnail,
  });

  final String title;
  final String type;
  final String status;
  final String thumbnail;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: Theme.of(context).textTheme.titleMedium!.copyWith(
                      color: customColorScheme.onSurface2,
                      fontWeight: FontWeight.bold,
                    ),
              ),
              const SizedBox(height: padding10),
              Text(
                type.toString(),
                style: Theme.of(context).textTheme.titleSmall!.copyWith(
                      color: customColorScheme.onSurface3,
                    ),
              ),
              const SizedBox(height: padding24),
              Row(
                children: [
                  Container(
                    width: 10,
                    height: 10,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: status == 'ACCEPT'
                          ? const Color.fromRGBO(19, 181, 172, 1)
                          : lightColorScheme.error,
                    ),
                  ),
                  const SizedBox(width: padding10),
                  Expanded(
                    child: Text(
                      status == 'ACCEPT'
                          ? '제휴 진행 중'
                          : status == 'PENDING'
                              ? '제휴 준비 중'
                              : '제휴 만료',
                      style: Theme.of(context).textTheme.labelMedium!.copyWith(
                            color: customColorScheme.onSurface3,
                          ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        Stack(
          alignment: Alignment.bottomCenter,
          children: [
            SizedBox(
              width: 80,
              height: 80,
              child: CachedNetworkImage(imageUrl: thumbnail),
            ),
            Container(
              width: 80,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(4),
                  bottomRight: Radius.circular(4),
                ),
                color: Color.fromRGBO(0, 0, 0, 0.6),
              ),
              alignment: Alignment.center,
              padding: const EdgeInsets.symmetric(vertical: 6),
              child: Text(
                '영업중',
                style: Theme.of(context).textTheme.labelMedium!.copyWith(
                      color: Colors.white,
                    ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
