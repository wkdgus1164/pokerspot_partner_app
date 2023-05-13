import 'package:flutter/material.dart';
import 'package:pokerspot_partner_app/common/constants/sizes.dart';
import 'package:pokerspot_partner_app/common/theme/color.dart';
import 'package:pokerspot_partner_app/common/theme/typography.dart';

class HomeStoreItem extends StatelessWidget {
  const HomeStoreItem({
    Key? key,
    required this.thumbnail,
    required this.title,
    required this.isCorporate,
    required this.lastDays,
    this.padding,
    this.onTap,
  }) : super(key: key);

  final String thumbnail;
  final String title;
  final bool isCorporate;
  final int lastDays;
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
          width: MediaQuery.of(context).size.width - 60,
          padding: const EdgeInsets.all(padding16),
          decoration: BoxDecoration(
            border: Border.all(color: borderColor),
            borderRadius: const BorderRadius.all(
              Radius.circular(defaultRadius * 2),
            ),
          ),
          child: Row(
            children: [
              const Placeholder(
                fallbackWidth: 60,
                fallbackHeight: 60,
                strokeWidth: 1,
              ),
              const SizedBox(width: padding16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: titleMedium.copyWith(
                        color: textColor,
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
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            color: Colors.red,
                          ),
                        ),
                        const SizedBox(width: 4),
                        Text(
                          isCorporate ? '$lastDays일 남음' : '제휴 일시중단',
                          style: caption.copyWith(
                            color: const Color.fromRGBO(58, 69, 82, 1),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 4),
                          child: Text('·'),
                        ),
                        Text(
                          isCorporate ? '제휴 중' : '기간 만료',
                          style: caption.copyWith(
                            color: const Color.fromRGBO(102, 111, 123, 1),
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
