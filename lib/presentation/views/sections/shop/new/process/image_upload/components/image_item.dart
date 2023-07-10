import 'package:cached_network_image/cached_network_image.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:pokerspot_partner_app/common/constants/sizes.dart';
import 'package:pokerspot_partner_app/common/theme/color.dart';

class ShopProcessImageItem extends StatelessWidget {
  const ShopProcessImageItem({
    super.key,
    this.imageUrl = '',
    this.isPrimary = false,
    this.isEssential = false,
    this.onPressed,
    required this.onEditButtonPressed,
    required this.onDeleteButtonPressed,
  });

  final String imageUrl;
  final bool isPrimary;
  final bool isEssential;
  final Function()? onPressed;
  final Function() onEditButtonPressed;
  final Function() onDeleteButtonPressed;

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
              color: imageUrl.isNotEmpty
                  ? Colors.transparent
                  : lightColorScheme.outline,
              strokeWidth: 1,
              radius: const Radius.circular(defaultRadius),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(defaultRadius),
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          defaultRadius,
                        ),
                      ),
                      child: imageUrl.isNotEmpty
                          ? CachedNetworkImage(imageUrl: imageUrl)
                          : null,
                    ),
                    if (isEssential) _buildLabel(context, '필수'),
                    if (isPrimary) _buildLabel(context, '대표'),
                    if (imageUrl.isEmpty) _buildUploadContainer(),
                    if (imageUrl.isNotEmpty) _buildToolbar(),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Positioned _buildLabel(BuildContext context, String text) {
    return Positioned(
      top: 0,
      left: 0,
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 10,
          vertical: 6,
        ),
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.only(
            bottomRight: Radius.circular(10),
          ),
          color: lightColorScheme.primary,
        ),
        child: Text(
          text,
          style: Theme.of(context).textTheme.labelLarge!.copyWith(
                color: lightColorScheme.onPrimary,
              ),
        ),
      ),
    );
  }

  Center _buildUploadContainer() {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          IconButton.outlined(
            onPressed: onPressed,
            icon: Icon(
              Icons.add_rounded,
              color: customColorScheme.onSurface3,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            '사진 추가',
            style: TextStyle(
              color: customColorScheme.onSurface3,
            ),
          ),
        ],
      ),
    );
  }

  Container _buildToolbar() {
    return Container(
      color: Colors.black.withOpacity(0.6),
      padding: const EdgeInsets.all(6),
      child: Row(
        children: [
          Expanded(
            child: GestureDetector(
              onTap: onEditButtonPressed,
              child: const Icon(
                Icons.edit_rounded,
                color: Colors.white,
                size: 16,
              ),
            ),
          ),
          Container(
            width: 1,
            height: 16,
            color: Colors.white.withOpacity(0.4),
          ),
          Expanded(
            child: GestureDetector(
              onTap: onDeleteButtonPressed,
              child: const Icon(
                Icons.delete_rounded,
                color: Colors.white,
                size: 16,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
