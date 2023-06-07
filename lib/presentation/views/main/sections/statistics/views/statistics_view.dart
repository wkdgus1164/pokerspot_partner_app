import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:pokerspot_partner_app/common/constants/sizes.dart';
import 'package:pokerspot_partner_app/common/theme/color.dart';
import 'package:pokerspot_partner_app/common/theme/typography.dart';
import 'package:pokerspot_partner_app/presentation/views/main/sections/home/components/no_store.dart';
import 'package:pokerspot_partner_app/presentation/views/main/sections/statistics/components/header/tab_header.dart';
import 'package:provider/provider.dart';

import '../../../../../providers/home_provider.dart';

class StatisticsView extends StatelessWidget {
  const StatisticsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<HomeProvider>(builder: (_, provider, __) {
      final title = provider.stores?.firstOrNull?.name;
      return Scaffold(
        appBar: statisticsTabAppBar(title),
        body: Scaffold(
          body: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: title == null
                  ? [const HomeNoStore()]
                  : [
                      Icon(Icons.bar_chart_rounded, color: greyVariant2),
                      const SizedBox(height: padding10),
                      Text(
                        '해당 매장은 아직\n통계 데이터가 존재하지 않습니다.',
                        style: label.copyWith(color: greyVariant2),
                        textAlign: TextAlign.center,
                      ),
                    ],
            ),
          ),
        ),
      );
    });
  }
}
