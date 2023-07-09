// ignore_for_file: sdk_version_since

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pokerspot_partner_app/common/constants/sizes.dart';
import 'package:pokerspot_partner_app/common/routes/base/shop.dart';
import 'package:pokerspot_partner_app/common/theme/color.dart';
import 'package:pokerspot_partner_app/data/models/partner/partner_store.dart';
import 'package:pokerspot_partner_app/presentation/views/sections/shop/views/components/new_shop.dart';
import 'package:pokerspot_partner_app/presentation/views/sections/shop/views/components/shop_card.dart';
import 'package:provider/provider.dart';

import '../../../../providers/home_provider.dart';

class ShopView extends StatefulWidget {
  const ShopView({super.key});

  @override
  State<ShopView> createState() => _ShopViewState();
}

class _ShopViewState extends State<ShopView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('매장관리'),
        actions: [
          IconButton(
            onPressed: () {
              context.pushNamed(ShopRoutes.newIntro.path);
            },
            icon: Icon(
              Icons.add,
              color: customColorScheme.onSurfaceContainer1,
            ),
          ),
        ],
      ),
      body: Scaffold(
        body: Consumer<HomeProvider>(
          builder: (_, provider, __) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const NewShop(),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: padding16,
                    vertical: padding24,
                  ),
                  child: Row(
                    children: [
                      Text(
                        '보유 매장',
                        style: Theme.of(context).textTheme.titleLarge!.copyWith(
                              fontWeight: FontWeight.bold,
                              color: customColorScheme.onSurface1,
                            ),
                      ),
                      const SizedBox(width: 6),
                      Text(
                        (provider.stores?.length ?? 0).toString(),
                        style: Theme.of(context).textTheme.titleLarge!.copyWith(
                              fontWeight: FontWeight.bold,
                              color: lightColorScheme.primary,
                            ),
                      ),
                    ],
                  ),
                ),
                if (provider.stores?.isNotEmpty == true)
                  Expanded(child: _buildStores(provider.stores ?? []))
                else
                  Expanded(
                    child: _buildEmpty(context),
                  ),
              ],
            );
          },
        ),
      ),
    );
  }

  Center _buildEmpty(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            Icons.info_outline_rounded,
            color: customColorScheme.onSurface3,
          ),
          const SizedBox(height: padding10),
          Text(
            '등록된 매장이 없습니다.\n매장을 등록해 주시기 바랍니다.',
            style: Theme.of(context).textTheme.labelLarge!.copyWith(
                  color: customColorScheme.onSurface3,
                ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

  Widget _buildStores(List<PartnerStoreModel> storeList) {
    return SingleChildScrollView(
      child: Column(
        children: List.generate(
          storeList.length,
          (index) => ShopCard(
            type: '토너펍',
            thumbnail: storeList[index].storeImages.firstOrNull?.url ?? '',
            title: storeList[index].name,
            status: storeList[index].status,
            isRunning: true,
            isRunningCheckChanged: (v) {},
            onCorporateButtonPressed: () {},
            onEditButtonPressed: () {
              context.pushNamed(ShopRoutes.editMain.path);
            },
          ),
        ),
      ),
    );
  }
}
