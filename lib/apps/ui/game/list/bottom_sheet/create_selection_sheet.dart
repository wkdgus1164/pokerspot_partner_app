import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pokerspot_partner_app/apps/global/global.dart';

class GamesCreateModalBottomSheet extends StatelessWidget {
  const GamesCreateModalBottomSheet({
    super.key,
    required this.handleDailyClick,
    required this.handleGTDClick,
  });

  final Function() handleDailyClick;
  final Function() handleGTDClick;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            children: [
              _buildContainer(
                iconPath: Assets.daily.path,
                backgroundColor: const Color(0xffEFF4FD),
                textColor: const Color(0xff709CED),
                title: '데일리 토너',
                handleClick: handleDailyClick,
              ),
              const SizedBox(width: 16),
              _buildContainer(
                iconPath: Assets.gtd.path,
                backgroundColor: const Color(0xffF7EEFB),
                textColor: const Color(0xffBA66E0),
                title: 'GTD 토너',
                handleClick: handleGTDClick,
              ),
            ],
          ),
        ),
      ],
    );
  }

  Expanded _buildContainer({
    required String iconPath,
    required Color backgroundColor,
    required Color textColor,
    required String title,
    required Function() handleClick,
  }) {
    return Expanded(
      child: GestureDetector(
        onTap: handleClick,
        child: Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: backgroundColor,
            borderRadius: BorderRadius.circular(16),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SvgPicture.asset(
                iconPath,
                width: 38,
                height: 38,
              ),
              const SizedBox(height: 16),
              Text(
                title,
                style: textTheme.titleSmall!.copyWith(
                  fontWeight: FontWeight.bold,
                  color: textColor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
