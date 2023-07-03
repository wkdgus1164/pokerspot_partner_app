import 'package:flutter/material.dart';
import 'package:pokerspot_partner_app/common/constants/sizes.dart';
import 'package:pokerspot_partner_app/common/theme/color.dart';
import 'package:pokerspot_partner_app/presentation/views/sections/home/tournaments/components/tournaments/item.dart';
import 'package:pokerspot_partner_app/presentation/widgets/app_bar/app_bar.dart';
import 'package:pokerspot_partner_app/presentation/widgets/button/text_button.dart';
import 'package:pokerspot_partner_app/presentation/widgets/divider/divider.dart';

class TournamentsView extends StatelessWidget {
  const TournamentsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        text: '토너먼트 현황 변경',
        left: Icons.close_rounded,
      ),
      body: SingleChildScrollView(
        child: Container(
          color: lightColorScheme.surface,
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.all(padding16),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Row(
                            children: [
                              Text(
                                '토너먼트',
                                style: Theme.of(context)
                                    .textTheme
                                    .titleLarge!
                                    .copyWith(
                                      color: customColorScheme.onSurface1,
                                      fontWeight: FontWeight.bold,
                                    ),
                              ),
                              const SizedBox(width: 4),
                              Text(
                                '3',
                                style: Theme.of(context)
                                    .textTheme
                                    .titleLarge!
                                    .copyWith(
                                      color: lightColorScheme.primary,
                                      fontWeight: FontWeight.bold,
                                    ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(width: 4),
                        CustomTextButton(
                          text: '토너먼츠 추가/변경',
                          onClick: () {},
                          theme: CustomTextButtonTheme.primary,
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                    TournamentsItem(
                      tournamentType: '시드권 토너',
                      tournamentTitle: '가나다라 시드권 토너먼트',
                      entryMin: 10,
                      entryMax: 25,
                      isToday: true,
                      isRealtime: false,
                      prize: 80,
                      onTodaySwitchChanged: (v) {},
                      onRealtimeSwitchChanged: (v) {},
                    ),
                    TournamentsItem(
                      tournamentType: '시드권 토너',
                      tournamentTitle: '가나다라 시드권 토너먼트',
                      entryMin: 10,
                      entryMax: 25,
                      isToday: true,
                      isRealtime: false,
                      prize: 80,
                      onTodaySwitchChanged: (v) {},
                      onRealtimeSwitchChanged: (v) {},
                    ),
                    TournamentsItem(
                      tournamentType: '시드권 토너',
                      tournamentTitle: '가나다라 시드권 토너먼트',
                      entryMin: 10,
                      entryMax: 25,
                      isToday: true,
                      isRealtime: false,
                      prize: 80,
                      onTodaySwitchChanged: (v) {},
                      onRealtimeSwitchChanged: (v) {},
                    ),
                    TournamentsItem(
                      tournamentType: '시드권 토너',
                      tournamentTitle: '가나다라 시드권 토너먼트',
                      entryMin: 10,
                      entryMax: 25,
                      isToday: true,
                      isRealtime: false,
                      prize: 80,
                      onTodaySwitchChanged: (v) {},
                      onRealtimeSwitchChanged: (v) {},
                    ),
                  ],
                ),
              ),
              const CustomDivider(),
            ],
          ),
        ),
      ),
    );
  }
}
