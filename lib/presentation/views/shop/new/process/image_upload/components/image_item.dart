import 'package:cached_network_image/cached_network_image.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:pokerspot_partner_app/common/constants/sizes.dart';
import 'package:pokerspot_partner_app/common/theme/color.dart';
import 'package:pokerspot_partner_app/common/theme/typography.dart';

class ShopProcessImageItem extends StatelessWidget {
  const ShopProcessImageItem({
    super.key,
    this.imageUrl = '',
    this.isPrimary = false,
    this.onPressed,
    required this.caption,
  });

  final String imageUrl;
  final bool isPrimary;
  final Function()? onPressed;
  final String caption;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width / 2 - 30,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          AspectRatio(
            aspectRatio: 1,
            child: DottedBorder(
              borderType: BorderType.RRect,
              color: Colors.grey.shade300,
              strokeWidth: 1,
              radius: const Radius.circular(
                defaultRadius * 2,
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(defaultRadius * 2),
                child: Stack(
                  alignment: Alignment.bottomRight,
                  children: [
                    Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: greyVariant5,
                        borderRadius: BorderRadius.circular(defaultRadius * 2),
                      ),
                      child: imageUrl.isNotEmpty
                          ? CachedNetworkImage(imageUrl: imageUrl)
                          : null,
                    ),
                    Container(
                      alignment: Alignment.center,
                      width: 40,
                      height: 40,
                      margin: const EdgeInsets.all(padding16),
                      decoration: BoxDecoration(
                        color: primaryColor,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: IconButton(
                        color: Colors.white,
                        onPressed: onPressed,
                        icon: const Icon(Icons.add),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(height: 6),
          Text(
            caption,
            style: label.copyWith(color: isPrimary ? primaryColor : textColor),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
