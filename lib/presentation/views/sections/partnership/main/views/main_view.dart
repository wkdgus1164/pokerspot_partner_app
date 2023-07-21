import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:pokerspot_partner_app/common/constants/sizes.dart';
import 'package:pokerspot_partner_app/common/theme/color.dart';
import 'package:pokerspot_partner_app/data/models/partner/partner_store.dart';
import 'package:pokerspot_partner_app/presentation/views/sections/partnership/main/views/components/header.dart';
import 'package:pokerspot_partner_app/presentation/widgets/divider/divider.dart';

import '../../register/views/register_view.dart';

class PartnershipMainView extends StatelessWidget {
  const PartnershipMainView({
    super.key,
    required this.store,
  });

  final PartnerStoreModel store;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('제휴 연장/등록')),
      body: Column(
        children: [
          PartnershipMainHeader(
            lastDays: store.storeAffiliate != null
                ? store.storeAffiliate!.startAt
                    .difference(store.storeAffiliate!.endAt)
                    .inDays
                : 0,
            name: store.name,
            startedAt: store.storeAffiliate != null
                ? DateFormat('yyyy. MM. dd.')
                    .format(store.storeAffiliate!.startAt)
                : '제휴 준비 중',
            finishedAt: store.storeAffiliate != null
                ? DateFormat('yyyy. MM. dd.')
                    .format(store.storeAffiliate!.endAt)
                : '제휴 준비 중',
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
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => PartnerRegisterView(
                    storeId: store.uid,
                  ),
                ),
              );
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
