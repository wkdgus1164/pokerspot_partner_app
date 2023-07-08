import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pokerspot_partner_app/common/constants/assets.dart';
import 'package:pokerspot_partner_app/common/theme/color.dart';

class NewShop extends StatelessWidget {
  const NewShop({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16),
      decoration: BoxDecoration(
        color: customColorScheme.surfaceContainer2,
      ),
      child: Column(
        children: [
          Container(
              padding: const EdgeInsets.all(10),
              decoration: ShapeDecoration(
                color: customColorScheme.surfaceContainer1,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(100),
                ),
              ),
              child: SvgPicture.asset(Assets.addNewBusiness.path)),
          const SizedBox(height: 10),
          Text(
            '업체 신규 등록',
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.titleSmall!.copyWith(
                  color: customColorScheme.onSurfaceContainer2,
                ),
          ),
        ],
      ),
    );
  }
}
