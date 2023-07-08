import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pokerspot_partner_app/common/constants/assets.dart';
import 'package:pokerspot_partner_app/common/theme/color.dart';

class ShopCardMenuButtons extends StatelessWidget {
  const ShopCardMenuButtons({
    super.key,
    required this.onEditButtonPressed,
    required this.onCorporateButtonPressed,
  });

  final Function() onEditButtonPressed;
  final Function() onCorporateButtonPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        _buildButton(
          context,
          onEditButtonPressed,
          '정보 수정',
          Assets.edit.path,
        ),
        const SizedBox(width: 16),
        _buildButton(
          context,
          onCorporateButtonPressed,
          '제휴 관리',
          Assets.shopAdmin.path,
        ),
      ],
    );
  }

  Column _buildButton(
    BuildContext context,
    Function() onButtonPressed,
    String text,
    String icon,
  ) {
    return Column(
      children: [
        GestureDetector(
          onTap: onButtonPressed,
          child: Container(
            width: 64,
            height: 64,
            alignment: Alignment.center,
            decoration: ShapeDecoration(
              color: lightColorScheme.surfaceVariant,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(100),
              ),
            ),
            child: SvgPicture.asset(icon, width: 24, height: 24),
          ),
        ),
        const SizedBox(height: 4),
        Text(
          text,
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.bodySmall!.copyWith(
                color: customColorScheme.onSurface2,
              ),
        ),
      ],
    );
  }
}
