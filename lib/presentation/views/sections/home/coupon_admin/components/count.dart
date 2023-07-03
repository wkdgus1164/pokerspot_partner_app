import 'package:flutter/material.dart';
import 'package:pokerspot_partner_app/common/constants/sizes.dart';
import 'package:pokerspot_partner_app/common/theme/color.dart';

class CouponAdminCount extends StatelessWidget {
  const CouponAdminCount({
    super.key,
    required this.lastCount,
    this.onMinusButtonPressed,
    this.onPlusButtonPressed,
  });

  final int lastCount;
  final Function()? onMinusButtonPressed;
  final Function()? onPlusButtonPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(padding16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '쿠폰 개수',
            style: Theme.of(context).textTheme.titleMedium!.copyWith(
                  fontWeight: FontWeight.bold,
                  color: customColorScheme.onSurface1,
                ),
          ),
          const SizedBox(height: padding16),
          Row(
            children: [
              Expanded(
                flex: 4,
                child: Text(
                  '남은 수량',
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        color: customColorScheme.onSurface1,
                      ),
                ),
              ),
              Expanded(
                flex: 6,
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: lightColorScheme.outline),
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: Row(
                    children: [
                      IconButton.outlined(
                        onPressed: onMinusButtonPressed,
                        icon: const Icon(Icons.exposure_minus_1_rounded),
                      ),
                      Expanded(
                        child: Text(
                          '$lastCount개',
                          style:
                              Theme.of(context).textTheme.bodyLarge!.copyWith(
                                    color: customColorScheme.onSurface2,
                                  ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      IconButton.outlined(
                        onPressed: onPlusButtonPressed,
                        icon: const Icon(Icons.exposure_plus_1_rounded),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
