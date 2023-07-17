import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pokerspot_partner_app/common/constants/sizes.dart';
import 'package:pokerspot_partner_app/common/routes/routes.dart';
import 'package:pokerspot_partner_app/common/theme/color.dart';
import 'package:pokerspot_partner_app/presentation/providers/auth_provider.dart';
import 'package:provider/provider.dart';

class MypageMyinfo extends StatelessWidget {
  const MypageMyinfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<AuthProvider>(
      builder: (_, provider, __) {
        return Container(
          padding: const EdgeInsets.symmetric(
            horizontal: padding16,
            vertical: padding24,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: Text(
                      provider.partner?.identifier ?? '로그인이 필요합니다.',
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                  ),
                  Material(
                    borderRadius: BorderRadius.circular(30),
                    child: InkWell(
                      onTap: () => context.push(CustomRouter.mypageAdmin.path),
                      splashColor: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(30),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          border: Border.all(
                            color: lightColorScheme.outline,
                          ),
                        ),
                        padding: const EdgeInsets.symmetric(
                          horizontal: padding10,
                          vertical: 6,
                        ),
                        child: Text(
                          '내 정보 관리',
                          style: Theme.of(context).textTheme.labelLarge,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
