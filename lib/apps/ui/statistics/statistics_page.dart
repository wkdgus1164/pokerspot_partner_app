import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pokerspot_partner_app/apps/global/global.dart';
import 'package:pokerspot_partner_app/apps/global/theme/typo.dart';

class StatisticsPage extends StatefulHookConsumerWidget {
  const StatisticsPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _StatisticsPageState();
}

class _StatisticsPageState extends ConsumerState<StatisticsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('통계'),
      ),
      drawer: Drawer(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.max,
            children: [
              Column(
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
                                imageUrl:
                                    'https://d1gfto9ehui3w0.cloudfront.net/A0037-0.png',
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
                                '몬스터 홀덤펍',
                                style: textTheme.titleMedium!.copyWith(
                                  color: colorGrey20,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                              Text(
                                '서울시 강남구 역삼동 123-45',
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
                  ListTile(
                    title: const Text('몬스터 홀덤펍'),
                    trailing: const Icon(
                      Icons.chevron_right_rounded,
                      color: colorGrey80,
                    ),
                    onTap: () {},
                  ),
                  ListTile(
                    title: const Text('몬스터 홀덤펍'),
                    trailing: const Icon(
                      Icons.chevron_right_rounded,
                      color: colorGrey80,
                    ),
                    onTap: () {},
                  ),
                ],
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
                    onTap: () {},
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
