import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:pokerspot_partner_app/common/constants/sizes.dart';
import 'package:pokerspot_partner_app/common/theme/color.dart';
import 'package:pokerspot_partner_app/presentation/widgets/app_bar/app_bar.dart';
import 'package:provider/provider.dart';

import '../../../../providers/home_provider.dart';
import '../../home/components/no_store.dart';

class ReservationView extends StatelessWidget {
  const ReservationView({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<HomeProvider>(
      builder: (_, provider, __) {
        final title = provider.stores?.firstOrNull?.name;
        return Scaffold(
          appBar: const CustomAppBar(text: '예약관리'),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: title == null
                  ? [const HomeNoStore()]
                  : [
                      Center(
                        child: Column(
                          children: [
                            Icon(
                              Icons.bar_chart_rounded,
                              color: customColorScheme.onSurface4,
                            ),
                            const SizedBox(height: padding10),
                            Text(
                              '해당 매장은 현재\n예약 데이터가 존재하지 않습니다.',
                              style: Theme.of(context)
                                  .textTheme
                                  .labelLarge!
                                  .copyWith(
                                    color: customColorScheme.onSurface4,
                                  ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                    ],
            ),
          ),
        );
      },
    );
  }
}
