import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:pokerspot_partner_app/common/constants/assets.dart';
import 'package:pokerspot_partner_app/common/constants/sizes.dart';
import 'package:pokerspot_partner_app/common/routes/base/bottom_navigation.dart';
import 'package:pokerspot_partner_app/presentation/widgets/button/custom_button.dart';

class ShopProcessSuccessView extends StatelessWidget {
  const ShopProcessSuccessView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SvgPicture.asset(Assets.complete.path),
              const SizedBox(height: padding24),
              Text(
                '매장 등록신청이\n완료 되었습니다.',
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      fontWeight: FontWeight.w700,
                    ),
              ),
              const SizedBox(height: padding16),
              Text(
                '승인 완료 후 제휴 등록이 가능합니다.',
                style: Theme.of(context).textTheme.labelLarge,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: padding48),
              Container(
                padding: const EdgeInsets.only(
                  left: padding64,
                  right: padding64,
                ),
                child: CustomFilledButton(
                  text: '확인',
                  theme: CustomFilledButtonTheme.secondary,
                  onPressed: () => context.goNamed(
                    BottomNavigationRoutes.home.path,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
