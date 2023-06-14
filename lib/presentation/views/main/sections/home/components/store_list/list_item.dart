import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:pokerspot_partner_app/common/constants/sizes.dart';
import 'package:pokerspot_partner_app/common/theme/color.dart';

class HomeStoreItem extends StatelessWidget {
  const HomeStoreItem({
    Key? key,
    required this.thumbnail,
    required this.title,
    required this.isCorporate,
    required this.lastDays,
    this.padding,
    this.onTap,
    this.width,
  }) : super(key: key);

  final String thumbnail;
  final String title;
  final bool isCorporate;
  final int lastDays;
  final double? width;
  final EdgeInsetsGeometry? padding;
  final GestureTapCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
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
          width: width ?? MediaQuery.of(context).size.width - 60,
          padding: const EdgeInsets.all(padding16),
          decoration: BoxDecoration(
            border: Border.all(color: lightColorScheme.outline),
            borderRadius: const BorderRadius.all(
              Radius.circular(defaultRadius * 2),
            ),
          ),
          child: Row(
            children: [
              SizedBox(
                width: 60,
                height: 60,
                child: CachedNetworkImage(imageUrl: thumbnail),
              ),
              const SizedBox(width: padding16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: Theme.of(context).textTheme.titleMedium!.copyWith(
                            fontWeight: FontWeight.w600,
                            overflow: TextOverflow.ellipsis,
                          ),
                      maxLines: 1,
                    ),
                    const SizedBox(height: padding10),
                    Row(
                      children: [
                        Container(
                          width: 10,
                          height: 10,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                            color: Colors.red,
                          ),
                        ),
                        const SizedBox(width: 4),
                        Text(
                          isCorporate ? '$lastDays일 남음' : '제휴 일시중단',
                          style:
                              Theme.of(context).textTheme.labelLarge!.copyWith(
                                    color: const Color.fromRGBO(58, 69, 82, 1),
                                    fontWeight: FontWeight.w500,
                                  ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Icon(
                Icons.keyboard_arrow_right_rounded,
                color: Colors.grey.shade300,
                size: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
