import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pokerspot_partner_app/common/constants/sizes.dart';
import 'package:pokerspot_partner_app/common/theme/color.dart';
import 'package:pokerspot_partner_app/presentation/effects/card_shadow.dart';
import 'package:pokerspot_partner_app/presentation/views/sections/shop/new/process/game/dialog/everyday.dart';
import 'package:pokerspot_partner_app/presentation/views/sections/shop/new/process/game/dialog/max_entry.dart';
import 'package:pokerspot_partner_app/presentation/views/sections/shop/new/process/game/dialog/min_entry.dart';
import 'package:pokerspot_partner_app/presentation/views/sections/shop/new/process/game/dialog/prize.dart';
import 'package:pokerspot_partner_app/presentation/views/sections/shop/new/process/game/dialog/register_fee.dart';
import 'package:pokerspot_partner_app/presentation/views/sections/shop/new/process/game/dialog/target.dart';
import 'package:pokerspot_partner_app/presentation/views/sections/shop/new/process/game/dialog/toner_name.dart';
import 'package:pokerspot_partner_app/presentation/views/sections/shop/new/process/game/dialog/toner_type.dart';
import 'package:pokerspot_partner_app/presentation/widgets/button/custom_button.dart';

class GameDialog extends StatelessWidget {
  const GameDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 0.5,
      padding: const EdgeInsets.all(padding16),
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [cardShadow],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const GameDialogTonerName(
            name: '100만 GTD 토너먼트',
            isAutoGenerated: true,
          ),
          const SizedBox(height: padding10),
          SizedBox(
            width: double.infinity,
            child: Text(
              '아래 조건을 설정하면 자동으로 생성됩니다.',
              style: Theme.of(context).textTheme.labelSmall!.copyWith(
                    fontWeight: FontWeight.bold,
                    color: customColorScheme.onSurface4,
                    letterSpacing: 0,
                  ),
            ),
          ),
          const Divider(height: padding24),

          // 매일 진행 여부
          GameDialogEveryday(
            isSwitchOn: true,
            onSwitchPressed: (v) {},
          ),
          const SizedBox(height: padding10),

          // 토너 종류
          const GameDialogTonerType(isSelected: false),
          const SizedBox(height: padding10),

          // 참가비
          const GameDialogRegisterFee(isSelected: false),
          const SizedBox(height: padding10),

          // 최소 엔트리
          const GameDialogMinEntry(isSelected: false),
          const SizedBox(height: padding10),

          // 최대 엔트리
          GameDialogMaxEntry(
            isSelected: false,
            onInfinitePressed: () {},
            isInfinite: true,
          ),
          const SizedBox(height: padding24),

          // 프라이즈
          const GameDialogPrize(isSelected: false),
          const SizedBox(height: padding10),

          // 타겟 토너
          const GameDialogTarget(isSelected: false),
          const SizedBox(height: padding10),

          // 추가하기
          CustomFilledButton(
            text: '추가하기',
            onPressed: () {
              context.pop();
            },
          ),
        ],
      ),
    );
  }
}
