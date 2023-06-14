import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:pokerspot_partner_app/common/constants/sizes.dart';
import 'package:pokerspot_partner_app/common/theme/color.dart';

class ShopCard extends StatelessWidget {
  const ShopCard({
    Key? key,
    required this.thumbnail,
    required this.title,
    required this.type,
    required this.isCorporate,
    this.onTap,
  }) : super(key: key);

  final String thumbnail;
  final String title;
  final String type;
  final bool isCorporate;
  final GestureTapCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        left: padding16,
        right: padding16,
        bottom: padding16,
      ),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(defaultRadius * 2),
        ),
      ),
      child: InkWell(
        onTap: onTap,
        splashColor: Colors.grey.shade50,
        borderRadius: const BorderRadius.all(
          Radius.circular(defaultRadius * 2),
        ),
        child: Container(
          padding: const EdgeInsets.all(padding16),
          decoration: BoxDecoration(
            border: Border.all(color: lightColorScheme.outline),
            borderRadius: const BorderRadius.all(
              Radius.circular(defaultRadius * 2),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    '제휴기간',
                    style: Theme.of(context).textTheme.labelLarge!.copyWith(
                          color: customColorScheme.onSurface4,
                        ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: padding10),
                    child: Text(
                      '·',
                      style: Theme.of(context).textTheme.labelLarge!.copyWith(
                            color: customColorScheme.onSurface4,
                          ),
                    ),
                  ),
                  Text(
                    '무료 제휴이벤트 적용 중',
                    style: Theme.of(context).textTheme.labelLarge!.copyWith(
                          color: customColorScheme.onSurface4,
                        ),
                  ),
                ],
              ),
              const SizedBox(height: padding10),
              const Divider(height: 1, thickness: 1),
              const SizedBox(height: padding10),
              Row(
                children: [
                  Expanded(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          title,
                          style:
                              Theme.of(context).textTheme.titleLarge!.copyWith(
                                    color: customColorScheme.onSurface2,
                                  ),
                        ),
                        const SizedBox(height: padding10),
                        Text(
                          type,
                          style:
                              Theme.of(context).textTheme.labelLarge!.copyWith(
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
                                color: isCorporate
                                    ? const Color.fromRGBO(19, 181, 172, 1)
                                    : lightColorScheme.error,
                              ),
                            ),
                            const SizedBox(width: padding10),
                            Expanded(
                              child: Text(
                                isCorporate ? '제휴 진행 중' : '제휴 만료',
                                style: Theme.of(context)
                                    .textTheme
                                    .labelLarge!
                                    .copyWith(
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
                        width: 100,
                        height: 100,
                        child: CachedNetworkImage(imageUrl: thumbnail),
                      ),
                      Container(
                        width: 100,
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
                          style:
                              Theme.of(context).textTheme.labelMedium!.copyWith(
                                    color: Colors.white,
                                  ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
