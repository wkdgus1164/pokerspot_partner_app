import 'package:flutter/material.dart';
import 'package:pokerspot_partner_app/common/constants/sizes.dart';
import 'package:pokerspot_partner_app/common/theme/color.dart';
import 'package:pokerspot_partner_app/presentation/effects/card_shadow.dart';

class ShopSelectItem extends StatelessWidget {
  const ShopSelectItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          side: BorderSide(color: lightColorScheme.outline),
          borderRadius: BorderRadius.circular(12),
        ),
        shadows: [cardShadow],
      ),
      child: Row(
        children: [
          SizedBox(
            width: 60,
            height: 60,
            child: Row(
              children: [
                Container(
                  width: 60,
                  height: 60,
                  decoration: ShapeDecoration(
                    image: const DecorationImage(
                      image: NetworkImage(
                        "https://via.placeholder.com/60x60",
                      ),
                      fit: BoxFit.fill,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(width: padding10),
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: double.infinity,
                  child: Text(
                    '몬스터 홀덤펍',
                    style: Theme.of(context).textTheme.titleMedium!.copyWith(
                          color: customColorScheme.onSurface2,
                        ),
                  ),
                ),
                const SizedBox(height: 6),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 10,
                      height: 10,
                      decoration: const ShapeDecoration(
                        color: Color(0xFF13B5AC),
                        shape: OvalBorder(),
                      ),
                    ),
                    const SizedBox(width: 4),
                    Text(
                      '제휴 진행중',
                      style: Theme.of(context).textTheme.labelMedium!.copyWith(
                            color: customColorScheme.onSurface3,
                          ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
