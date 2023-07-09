import 'package:flutter/material.dart';
import 'package:pokerspot_partner_app/common/constants/sizes.dart';
import 'package:pokerspot_partner_app/common/theme/color.dart';
import 'package:pokerspot_partner_app/presentation/effects/card_shadow.dart';

import '../../../../../../data/models/partner/partner_store.dart';

class ShopSelectItem extends StatelessWidget {
  const ShopSelectItem({
    super.key,
    required this.store,
  });

  final PartnerStoreModel store;

  bool get _isPartnership => store.status == 'ACCEPT';

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
                    image: DecorationImage(
                      image: NetworkImage(
                        store.storeImages.first.url,
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
                    store.name,
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
                      decoration: ShapeDecoration(
                        color: _isPartnership
                            ? const Color(0xFF13B5AC)
                            : const Color(0xFFDB2828),
                        shape: const OvalBorder(),
                      ),
                    ),
                    const SizedBox(width: 4),
                    Text(
                      _isPartnership ? '제휴 진행중' : '제휴 중단',
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
