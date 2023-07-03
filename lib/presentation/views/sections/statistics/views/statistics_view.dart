import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:pokerspot_partner_app/presentation/views/common/no_store.dart';
import 'package:pokerspot_partner_app/presentation/views/sections/statistics/components/list_item.dart';
import 'package:pokerspot_partner_app/presentation/views/sections/statistics/components/total.dart';
import 'package:pokerspot_partner_app/presentation/widgets/app_bar/app_bar.dart';
import 'package:provider/provider.dart';

import '../../../../providers/home_provider.dart';

class StatisticsView extends StatelessWidget {
  const StatisticsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<HomeProvider>(
      builder: (_, provider, __) {
        final title = provider.stores?.firstOrNull?.name;
        return Scaffold(
          appBar: const CustomAppBar(
            text: '통계',
            bottomDivider: false,
            isLeftButton: false,
          ),
          body: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: title == null
                  ? [const Center(child: NoStore())]
                  : [
                      const StatisticsTotal(total: 135),
                      const StatisticsListItem(),
                      const StatisticsListItem(),
                      const StatisticsListItem(),
                      const StatisticsListItem(),
                    ],
            ),
          ),
        );
      },
    );
  }
}
