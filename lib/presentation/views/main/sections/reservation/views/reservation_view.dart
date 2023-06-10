import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:pokerspot_partner_app/presentation/widgets/app_bar/app_bar.dart';
import 'package:provider/provider.dart';

import '../../../../../providers/home_provider.dart';
import '../../home/components/no_store.dart';

class ReservationView extends StatelessWidget {
  const ReservationView({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<HomeProvider>(
      builder: (_, provider, __) {
        final title = provider.stores?.firstOrNull?.name;
        return Scaffold(
          appBar: const CustomAppBar(
            center: CustomAppBarCenter.text,
            text: '예약관리',
            theme: CustomAppBarTheme.black,
          ),
          // appBar: reservationTabAppBar(context, title),
          body: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: title == null
                    ? [const HomeNoStore()]
                    : [
                        Center(
                          child: Text(
                            '해당 매장은 현재 예약 데이터가 존재하지 않습니다.',
                            style: Theme.of(context).textTheme.labelLarge,
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ]
                // TODO MVP 이후
                /*
                  : [
                      Row(
                        children: [
                          Expanded(
                            child: Container(
                              padding: const EdgeInsets.all(padding16),
                              color: const Color.fromRGBO(42, 50, 59, 1),
                              child: Column(
                                children: [
                                  Text(
                                    '0',
                                    style: headlineMedium.copyWith(
                                        color: Colors.white),
                                  ),
                                  const SizedBox(height: 6),
                                  Text(
                                    '처리할 예약',
                                    style: label.copyWith(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              padding: const EdgeInsets.all(padding16),
                              color: const Color.fromRGBO(58, 69, 82, 1),
                              child: Column(
                                children: [
                                  Text(
                                    '12',
                                    style: headlineMedium.copyWith(
                                      color: Colors.white.withOpacity(0.6),
                                    ),
                                  ),
                                  const SizedBox(height: 6),
                                  Text(
                                    '접수 완료',
                                    style: label.copyWith(
                                      color: Colors.white.withOpacity(0.6),
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          top: padding10,
                          bottom: padding10,
                          left: padding24,
                          right: padding16,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Text(
                                  '09.05(월)',
                                  style: titleLarge.copyWith(color: textColor),
                                ),
                                const SizedBox(width: 6),
                                Text(
                                  '19:00 스타트',
                                  style: label.copyWith(
                                    color: textColor.withOpacity(0.6),
                                  ),
                                ),
                              ],
                            ),
                            CustomTextButton(
                              text: '예약 일괄취소',
                              color: errorColor,
                              onClick: () {},
                            ),
                          ],
                        ),
                      ),
                      Divider(height: 1, thickness: 1, color: borderColor),
                      Expanded(
                        child: Center(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(Icons.check_rounded, color: greyVariant2),
                              const SizedBox(height: padding10),
                              Text(
                                '모든 예약 접수를\n처리하였습니다.',
                                style: label.copyWith(color: greyVariant2),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                */
                ),
          ),
        );
      },
    );
  }
}
