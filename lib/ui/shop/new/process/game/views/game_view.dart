import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pokerspot_partner_app/common/components/app_bar/app_bar.dart';
import 'package:pokerspot_partner_app/common/components/button/custom_button.dart';
import 'package:pokerspot_partner_app/common/components/info_box/info_box.dart';
import 'package:pokerspot_partner_app/common/constants/sizes.dart';
import 'package:pokerspot_partner_app/common/routes/base/shop.dart';
import 'package:pokerspot_partner_app/common/theme/color.dart';
import 'package:pokerspot_partner_app/common/theme/typography.dart';
import 'package:pokerspot_partner_app/ui/shop/new/process/components/steps.dart';
import 'package:pokerspot_partner_app/ui/shop/new/process/game/components/add_button.dart';
import 'package:pokerspot_partner_app/ui/shop/new/process/game/components/game_item.dart';

class ShopProcessGameView extends StatelessWidget {
  const ShopProcessGameView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        customAppBarTheme: CustomAppBarTheme.white,
        customAppBarLeftSide: CustomAppBarLeftSide.cancelButton,
        customAppBarCenter: CustomAppBarCenter.text,
        text: '신규 매장 등록',
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(1),
          child: Divider(color: borderColor, height: 1, thickness: 1),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Container(
                  color: backgroundColor,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          left: padding16,
                          right: padding16,
                          top: padding16,
                          bottom: padding32,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            const ShopProcessSteps(index: 5),
                            const SizedBox(height: padding16),
                            Text('게임 정보', style: headlineSmall),
                            const SizedBox(height: padding10),
                            Text('최소 1개의 토너먼트 목록을 작성해주세요.', style: bodySmall),
                            const SizedBox(height: padding10),
                            const InfoBox(
                              boxColor: BoxColor.blue,
                              text: '모든 참가비의 단위는 chip입니다.',
                            ),
                            const SizedBox(height: padding24),
                            Text(
                              '토너먼트',
                              style: titleMedium.copyWith(color: textColor),
                            ),
                            const SizedBox(height: padding10),

                            // 추가하기 버튼
                            GameAddButton(onPressed: () {}),

                            // 아이템
                            GameItem(
                              title: '3만 데일리 토너먼트',
                              isAllDayRunning: true,
                              tonerType: TonerType.daily,
                              onTonerTypeChanged: () {},
                              onAllDayRunningChanged: () {},
                              joinCost: '3만',
                              onJoinCostInputChanged: (value) {},
                              entryStart: 15,
                              onEntryStartInputChanged: (value) {},
                              entryLimit: 0,
                              onEntryLimitInputChanged: (value) {},
                              prize: 80,
                              targetToner: 'OOOO 토너먼트',
                              onTargetTonerInputChanged: (value) {},
                              onPrizeInputChanged: (value) {},
                              isDeleteButtonEnabled: true,
                              onDeleteButtonPressed: () {},
                              isSaveButtonEnabled: true,
                              onsaveButtonPressed: () {},
                            ),

                            // 아이템
                            GameItem(
                              title: '3만 데일리 토너먼트',
                              isAllDayRunning: true,
                              tonerType: TonerType.daily,
                              onTonerTypeChanged: () {},
                              onAllDayRunningChanged: () {},
                              joinCost: '3만',
                              onJoinCostInputChanged: (value) {},
                              entryStart: 15,
                              onEntryStartInputChanged: (value) {},
                              entryLimit: 0,
                              onEntryLimitInputChanged: (value) {},
                              prize: 80,
                              targetToner: 'OOOO 토너먼트',
                              onTargetTonerInputChanged: (value) {},
                              onPrizeInputChanged: (value) {},
                              isDeleteButtonEnabled: true,
                              onDeleteButtonPressed: () {},
                              isSaveButtonEnabled: true,
                              onsaveButtonPressed: () {},
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            _buildNextButton(context),
          ],
        ),
      ),
    );
  }

  Container _buildNextButton(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.only(
        top: padding16,
        left: padding16,
        right: padding16,
        bottom: padding32,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 4,
            offset: const Offset(0, -1),
          ),
        ],
      ),
      child: Row(
        children: [
          Expanded(
            child: CustomButton(
              text: '이전',
              customButtonTheme: CustomButtonTheme.light,
              onPressed: () => Navigator.of(context).pop(),
            ),
          ),
          const SizedBox(width: padding16),
          Expanded(
            child: CustomButton(
              text: '완료',
              customButtonTheme: CustomButtonTheme.primary,
              onPressed: () => context.pushNamed(
                ShopRoutes.processSuccess.path,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
