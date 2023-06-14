import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:pokerspot_partner_app/common/constants/assets.dart';
import 'package:pokerspot_partner_app/common/constants/sizes.dart';
import 'package:pokerspot_partner_app/common/theme/color.dart';
import 'package:pokerspot_partner_app/data/models/partner/partner_store.dart';
import 'package:pokerspot_partner_app/presentation/views/main/sections/shop/components/shop_card.dart';
import 'package:pokerspot_partner_app/presentation/widgets/app_bar/app_bar.dart';
import 'package:provider/provider.dart';

import '../../../../../../common/routes/base/shop.dart';
import '../../../../../providers/home_provider.dart';
import '../../home/components/store_list/list_item.dart';

class ShopView extends StatefulWidget {
  const ShopView({super.key});

  @override
  State<ShopView> createState() => _ShopViewState();
}

class _ShopViewState extends State<ShopView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        theme: CustomAppBarTheme.dark,
        text: '매장관리',
        isCenterLogo: false,
        bottomDivider: false,
        actions: [
          IconButton(
            onPressed: () {
              // TODO: 신규 등록 페이지로 이동
            },
            icon: Icon(
              Icons.add,
              color: customColorScheme.onSurfaceContainer1,
            ),
          ),
        ],
      ),
      body: Scaffold(
        body: Consumer<HomeProvider>(builder: (_, provider, __) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // Ink(
              //   decoration: BoxDecoration(
              //     color: customColorScheme.surfaceContainer2,
              //   ),
              //   child: InkWell(
              //     onTap: () {
              //       context.pushNamed(ShopRoutes.newIntro.path);
              //     },
              //     splashColor: customColorScheme.surfaceContainer1,
              //     child: Container(
              //       padding: const EdgeInsets.all(padding24),
              //       child: Column(
              //         children: [
              //           Container(
              //             padding: const EdgeInsets.all(padding10),
              //             decoration: BoxDecoration(
              //               color: customColorScheme.surfaceContainer1,
              //               borderRadius: BorderRadius.circular(100),
              //             ),
              //             child: SvgPicture.asset(Assets.addNewBusiness.path),
              //           ),
              //           const SizedBox(height: 6),
              //           Text(
              //             '업체 신규 등록',
              //             style: Theme.of(context)
              //                 .textTheme
              //                 .bodySmall!
              //                 .copyWith(color: Colors.white),
              //           ),
              //         ],
              //       ),
              //     ),
              //   ),
              // ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: padding16,
                  vertical: padding24,
                ),
                child: Row(
                  children: [
                    Text(
                      '보유 매장',
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    const SizedBox(width: 6),
                    Text(
                      (provider.stores?.length ?? 0).toString(),
                      style: Theme.of(context).textTheme.titleLarge!.copyWith(
                            color: lightColorScheme.primary,
                          ),
                    ),
                  ],
                ),
              ),
              if (provider.stores?.isNotEmpty == true)
                _buildStores(provider.stores ?? [])
              else
                Expanded(
                  child: Center(
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
                          style:
                              Theme.of(context).textTheme.labelLarge!.copyWith(
                                    color: customColorScheme.onSurface3,
                                  ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                ),
            ],
          );
        }),
      ),
    );
  }

  // FIXME 임시 보유 매장 리스트
  Widget _buildStores(List<PartnerStoreModel> storeList) {
    return SingleChildScrollView(
      child: Column(
        children: List.generate(
          storeList.length,
          (index) => ShopCard(
            type: '토너펍',
            thumbnail: storeList[index].storeImages.firstOrNull?.url ?? '',
            title: storeList[index].name,
            isCorporate: storeList[index].status == 'ACCEPT',
            onTap: () {},
          ),
        ),
      ),
    );
  }
}
