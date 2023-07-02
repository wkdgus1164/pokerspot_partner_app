// ignore_for_file: sdk_version_since

import 'package:flutter/material.dart';
import 'package:pokerspot_partner_app/common/constants/sizes.dart';
import 'package:pokerspot_partner_app/common/theme/color.dart';
import 'package:pokerspot_partner_app/data/models/partner/partner_store.dart';
import 'package:pokerspot_partner_app/presentation/views/main/sections/home/components/store_list/list_item.dart';

class HomeStore extends StatelessWidget {
  final List<PartnerStoreModel> storeList;

  const HomeStore({
    Key? key,
    required this.storeList,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const SizedBox(height: padding10),
        Padding(
          padding: const EdgeInsets.fromLTRB(
            padding16,
            padding16,
            padding10,
            0,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                '제휴 현황',
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                      color: customColorScheme.onSurface1,
                      fontWeight: FontWeight.bold,
                    ),
              ),
              const SizedBox(width: 4),
              Text(
                storeList.length.toString(),
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                      color: lightColorScheme.primary,
                      fontWeight: FontWeight.bold,
                    ),
              ),
            ],
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Wrap(
            children: List.generate(
              storeList.length,
              (index) => HomeStoreItem(
                thumbnail: storeList[index].storeImages.firstOrNull?.url ?? '',
                title: storeList[index].name,
                isCorporate: storeList[index].status == 'ACCEPT',
                lastDays: 0,
                padding: index == 0
                    ? const EdgeInsets.only(
                        left: padding16,
                        right: padding10,
                        top: padding16,
                        bottom: padding16,
                      )
                    : const EdgeInsets.only(
                        right: padding10,
                        top: padding16,
                        bottom: padding16,
                      ),
                onTap: () {},
              ),
            ),
          ),
        ),
        const SizedBox(height: padding32),
      ],
    );
  }
}
