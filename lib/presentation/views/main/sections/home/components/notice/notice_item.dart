import 'package:flutter/material.dart';
import 'package:pokerspot_partner_app/common/constants/sizes.dart';
import 'package:pokerspot_partner_app/common/theme/color.dart';
import 'package:pokerspot_partner_app/common/theme/typography.dart';

class HomeNoticeItem extends StatelessWidget {
  const HomeNoticeItem({
    Key? key,
    required this.title,
    required this.createdAt,
    required this.onItemPressed,
  }) : super(key: key);

  final String title;
  final String createdAt;
  final Function() onItemPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        left: padding16,
        right: padding10,
        top: padding16,
        bottom: padding16,
      ),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(defaultRadius)),
      ),
      child: InkWell(
        onTap: onItemPressed,
        splashColor: Colors.grey.shade50,
        borderRadius: const BorderRadius.all(Radius.circular(defaultRadius)),
        child: Container(
          width: MediaQuery.of(context).size.width - 80,
          padding: const EdgeInsets.all(padding16),
          decoration: BoxDecoration(
            border: Border.all(color: borderColor),
            borderRadius: const BorderRadius.all(
              Radius.circular(defaultRadius),
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.05),
                spreadRadius: 3,
                blurRadius: 1,
                offset: const Offset(0, 1),
              ),
            ],
          ),
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
              Text(
                createdAt,
                style: caption.copyWith(
                  color: greyVariant3,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
