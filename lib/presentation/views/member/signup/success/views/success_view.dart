import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:pokerspot_partner_app/presentation/widgets/button/custom_button.dart';
import 'package:pokerspot_partner_app/common/constants/assets.dart';
import 'package:pokerspot_partner_app/common/constants/sizes.dart';
import 'package:pokerspot_partner_app/common/routes/base/member.dart';

class SignupSuccessView extends StatelessWidget {
  const SignupSuccessView({Key? key}) : super(key: key);

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
                '가입 완료',
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
              ),
              const SizedBox(height: padding16),
              Text(
                '회원가입이 완료되었습니다.',
                style: Theme.of(context).textTheme.labelLarge,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 4),
              Text(
                '신규매장을 등록하고 매장을 관리해보세요!',
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
                  theme: CustomFilledButtonTheme.primary,
                  onPressed: () => context.pushNamed(MemberRoutes.login.path),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
