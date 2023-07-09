import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pokerspot_partner_app/common/constants/assets.dart';
import 'package:pokerspot_partner_app/common/constants/sizes.dart';
import 'package:pokerspot_partner_app/common/theme/color.dart';

class ShopEditOperationPubType extends StatelessWidget {
  const ShopEditOperationPubType({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(padding16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            '펍의 종류',
            style: Theme.of(context).textTheme.titleMedium!.copyWith(
                  fontWeight: FontWeight.bold,
                  color: customColorScheme.onSurface1,
                ),
          ),
          const SizedBox(height: 16),
          Text(
            '펍의 종류가 변경될 경우 제휴센터로 문의하세요.',
            style: Theme.of(context).textTheme.bodySmall!.copyWith(
                  color: customColorScheme.onSurface3,
                ),
          ),
          const SizedBox(height: 16),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 100,
                height: 100,
                padding: const EdgeInsets.all(padding10),
                alignment: Alignment.center,
                clipBehavior: Clip.antiAlias,
                decoration: ShapeDecoration(
                  color: lightColorScheme.primaryContainer,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: SvgPicture.asset(Assets.tonerPubOn.path),
              ),
              const SizedBox(height: 6),
              SizedBox(
                width: 100,
                child: Text(
                  '토너펍',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.labelLarge!.copyWith(
                        color: customColorScheme.onSurface3,
                      ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
