import 'package:flutter/material.dart';
import 'package:pokerspot_partner_app/common/theme/color.dart';

class ShopEditImageAddItem extends StatelessWidget {
  const ShopEditImageAddItem({super.key, required this.onPressed});

  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        width: 160,
        height: 160,
        clipBehavior: Clip.antiAlias,
        decoration: ShapeDecoration(
          shape: RoundedRectangleBorder(
            side: BorderSide(color: lightColorScheme.outline),
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            IconButton.outlined(
              onPressed: onPressed,
              icon: Icon(
                Icons.add_rounded,
                color: customColorScheme.onSurface2,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              '사진 추가',
              style: Theme.of(context).textTheme.labelMedium!.copyWith(
                    color: customColorScheme.onSurface3,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
