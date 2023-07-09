import 'package:flutter/material.dart';
import 'package:pokerspot_partner_app/common/constants/sizes.dart';
import 'package:pokerspot_partner_app/common/theme/color.dart';

class ShopEditImageItem extends StatelessWidget {
  const ShopEditImageItem({
    super.key,
    required this.imageUrl,
    this.isMain = false,
    required this.onEditButtonPressed,
    required this.onDeleteButtonPressed,
  });

  final String imageUrl;
  final bool isMain;
  final Function() onEditButtonPressed;
  final Function() onDeleteButtonPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160,
      height: 160,
      margin: const EdgeInsets.symmetric(horizontal: padding16),
      clipBehavior: Clip.antiAlias,
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          side: BorderSide(color: lightColorScheme.outline),
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Stack(
        children: [
          Image.network(imageUrl),
          if (isMain) ...[
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 10,
                vertical: 8,
              ),
              decoration: ShapeDecoration(
                color: lightColorScheme.primary,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(8),
                  ),
                ),
              ),
              child: Text(
                '대표',
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
              ),
            ),
          ],
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              color: Colors.black.withOpacity(0.8),
              child: Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: onEditButtonPressed,
                      child: Container(
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          border: Border(
                            right: BorderSide(
                              color: Colors.white.withOpacity(0.4),
                            ),
                          ),
                        ),
                        child: const Icon(
                          Icons.edit_rounded,
                          color: Colors.white,
                          size: 20,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: onDeleteButtonPressed,
                      child: Container(
                        padding: const EdgeInsets.all(8),
                        child: const Icon(
                          Icons.delete_rounded,
                          color: Colors.white,
                          size: 20,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
