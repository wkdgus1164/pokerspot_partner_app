import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:pokerspot_partner_app/apps/global/global.dart';
import 'package:pokerspot_partner_app/apps/ui/navigation/drawer/data.dart';

class NavigationDrawerVac extends StatelessWidget {
  const NavigationDrawerVac({
    super.key,
    required this.currentStoreImageUrl,
    required this.currnetStoreName,
    required this.currentStoreAddress,
    required this.stores,
    required this.handleStoreClick,
    required this.handleCreateStoreClick,
  });

  final String currentStoreImageUrl;
  final String currnetStoreName;
  final String currentStoreAddress;
  final List<DrawerStoresModel> stores;
  final Function(String id) handleStoreClick;
  final Function() handleCreateStoreClick;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16),
                    child: Row(
                      children: [
                        Stack(
                          alignment: Alignment.center,
                          children: [
                            Container(
                              width: 60,
                              height: 60,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: colorBrand60,
                              ),
                            ),
                            Container(
                              width: 54,
                              height: 54,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white,
                              ),
                            ),
                            Container(
                              width: 50,
                              height: 50,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                              ),
                              clipBehavior: Clip.antiAlias,
                              child: CachedNetworkImage(
                                imageUrl: currentStoreImageUrl,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(width: 16),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Text(
                                currnetStoreName,
                                style: textTheme.titleMedium!.copyWith(
                                  color: colorGrey20,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                              Text(
                                currentStoreAddress,
                                style: textTheme.labelMedium!.copyWith(
                                  color: colorGrey60,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Divider(),
                  Expanded(
                    child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: stores.length,
                      itemBuilder: (context, index) {
                        return ListTile(
                          title: Text(stores[index].name),
                          trailing: const Icon(
                            Icons.chevron_right_rounded,
                            color: colorGrey80,
                          ),
                          onTap: handleStoreClick(stores[index].id),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Divider(),
                ListTile(
                  leading: const Icon(
                    Icons.add_rounded,
                    color: colorGrey80,
                  ),
                  title: Text(
                    '새로운 매장 등록하기',
                    style: textTheme.bodyLarge!.copyWith(
                      color: colorGrey40,
                    ),
                  ),
                  onTap: handleCreateStoreClick,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
