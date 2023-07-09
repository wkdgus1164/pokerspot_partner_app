import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pokerspot_partner_app/common/constants/sizes.dart';
import 'package:pokerspot_partner_app/common/routes/base/shop.dart';
import 'package:pokerspot_partner_app/common/theme/color.dart';
import 'package:pokerspot_partner_app/presentation/views/sections/partnership/main/views/components/header.dart';
import 'package:pokerspot_partner_app/presentation/widgets/divider/divider.dart';

class PartnershipMainView extends StatelessWidget {
  const PartnershipMainView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('제휴 연장/등록')),
      body: Column(
        children: [
          const PartnershipMainHeader(
            lastDays: 24,
            name: '몬스터 홀덤펍',
            startedAt: '2022.09.06',
            finishedAt: '2022.10.06',
          ),
          const CustomDivider(),
          ListTile(
            contentPadding: const EdgeInsets.symmetric(
              horizontal: padding16,
              vertical: 8,
            ),
            title: Text(
              '제휴 신청하기',
              style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                    color: customColorScheme.onSurface2,
                  ),
            ),
            trailing: Icon(
              Icons.chevron_right_rounded,
              color: customColorScheme.onSurface4,
            ),
            onTap: () {
              context.pushNamed(ShopRoutes.partnershipRegister.path);
            },
          ),
          const Divider(height: 1, thickness: 1),
          ListTile(
            contentPadding: const EdgeInsets.symmetric(
              horizontal: padding16,
              vertical: 8,
            ),
            title: Text(
              '제휴 내역 확인',
              style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                    color: customColorScheme.onSurface2,
                  ),
            ),
            trailing: Icon(
              Icons.chevron_right_rounded,
              color: customColorScheme.onSurface4,
            ),
            onTap: () {},
          ),
          const Divider(height: 1, thickness: 1),
        ],
      ),
    );
  }
}
