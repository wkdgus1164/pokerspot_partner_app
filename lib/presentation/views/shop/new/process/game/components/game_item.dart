import 'package:flutter/material.dart';
import 'package:pokerspot_partner_app/common/constants/sizes.dart';
import 'package:pokerspot_partner_app/common/theme/color.dart';
import 'package:pokerspot_partner_app/common/theme/typography.dart';
import 'package:pokerspot_partner_app/presentation/widgets/button/custom_button.dart';
import 'package:pokerspot_partner_app/presentation/widgets/checkbox/checkbox.dart';
import 'package:pokerspot_partner_app/presentation/widgets/text_field/text_field.dart';

import '../../../../../../../data/models/store/create_store_request.dart';

class GameItem extends StatelessWidget {
  const GameItem({
    super.key,
    required this.title,
    required this.isAllDayRunning,
    required this.onAllDayRunningChanged,
    required this.tonerType,
    required this.onTonerTypeChanged,
    required this.joinCost,
    required this.onJoinCostInputChanged,
    required this.entryStart,
    required this.onEntryStartInputChanged,
    required this.entryLimit,
    required this.onEntryLimitInputChanged,
    required this.prize,
    required this.onPrizeInputChanged,
    required this.isDeleteButtonEnabled,
    required this.onDeleteButtonPressed,
    required this.isSaveButtonEnabled,
    this.onsaveButtonPressed,
    required this.targetToner,
    required this.onTargetTonerInputChanged,
  });

  final String title;
  final bool isAllDayRunning;
  final Function() onAllDayRunningChanged;
  final TonerType tonerType;
  final Function(int) onTonerTypeChanged;
  final int joinCost;
  final Function(int) onJoinCostInputChanged;
  final int entryStart;
  final Function(String) onEntryStartInputChanged;
  final int entryLimit;
  final Function(String) onEntryLimitInputChanged;
  final String prize;
  final Function(String) onPrizeInputChanged;
  final String targetToner;
  final Function(String) onTargetTonerInputChanged;
  final bool isDeleteButtonEnabled;
  final Function() onDeleteButtonPressed;
  final bool isSaveButtonEnabled;
  final VoidCallback? onsaveButtonPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: padding16),
      padding: const EdgeInsets.all(padding16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(defaultRadius),
        border: Border.all(color: greyVariant2),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            spreadRadius: 2,
            blurRadius: 2,
            offset: const Offset(0, 1),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(title, style: titleMedium.copyWith(color: textColor)),
          const SizedBox(height: padding10),
          InkWell(
            onTap: onAllDayRunningChanged,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CustomCheckbox(
                  value: isAllDayRunning,
                  onChanged: onAllDayRunningChanged,
                ),
                const SizedBox(width: padding10),
                Text('매일 진행', style: label.copyWith(color: textColor)),
              ],
            ),
          ),
          const SizedBox(height: padding10),
          Row(
            children: [
              Expanded(
                child: Text('종류', style: titleSmall.copyWith(color: textColor)),
              ),
              Expanded(
                flex: 4,
                child: LayoutBuilder(
                  builder: (ctx, constraints) {
                    final minWidth = constraints.minWidth / 3.1;
                    return ToggleButtons(
                      onPressed: onTonerTypeChanged,
                      borderRadius: const BorderRadius.all(
                        Radius.circular(defaultRadius),
                      ),
                      constraints: BoxConstraints(
                        minWidth: minWidth,
                        minHeight: constraints.minHeight,
                      ),
                      selectedBorderColor: primaryColor,
                      selectedColor: Colors.white,
                      fillColor: primaryColor,
                      color: primaryColor,
                      isSelected: [
                        tonerType == TonerType.daily,
                        tonerType == TonerType.seed
                      ],
                      children: [
                        Container(
                          alignment: Alignment.center,
                          child: const Text('데일리토너'),
                        ),
                        Container(
                          alignment: Alignment.center,
                          child: const Text('시드권토너'),
                        ),
                      ],
                    );
                  },
                ),
              ),
            ],
          ),
          const SizedBox(height: padding10),
          Row(
            children: [
              Expanded(
                flex: 1,
                child: Text(
                  '참가비',
                  style: titleSmall.copyWith(color: textColor),
                ),
              ),
              Expanded(
                flex: 4,
                child: CustomTextField(
                  initText: joinCost.toString(),
                  keyboardType: TextInputType.number,
                  hint: '참가비 입력',
                  onTextFieldChanged: (value) =>
                      onJoinCostInputChanged.call(int.tryParse(value) ?? 0),
                ),
              ),
            ],
          ),
          const SizedBox(height: padding10),
          Row(
            children: [
              Expanded(
                flex: 1,
                child: Text(
                  '엔트리',
                  style: titleSmall.copyWith(color: textColor),
                ),
              ),
              Expanded(
                flex: 4,
                child: Row(
                  children: [
                    Expanded(
                      child: CustomTextField(
                        initText: entryStart.toString(),
                        keyboardType: TextInputType.number,
                        hint: '엔트리 입력',
                        onTextFieldChanged: onEntryStartInputChanged,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: padding10),
                      child: Text('~'),
                    ),
                    Expanded(
                      child: CustomTextField(
                        initText: entryLimit.toString(),
                        keyboardType: TextInputType.number,
                        hint: '엔트리 입력',
                        onTextFieldChanged: onEntryLimitInputChanged,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: padding10),
          Row(
            children: [
              Expanded(
                flex: 1,
                child: Text(
                  '프라이즈',
                  style: titleSmall.copyWith(color: textColor),
                ),
              ),
              Expanded(
                flex: 4,
                child: CustomTextField(
                  initText: prize,
                  hint: '프라이즈 입력',
                  onTextFieldChanged: onPrizeInputChanged,
                ),
              ),
            ],
          ),
          if (tonerType == TonerType.seed)
            Row(
              children: [
                const SizedBox(height: padding10),
                Expanded(
                  flex: 1,
                  child: Text(
                    '타겟 토너',
                    style: titleSmall.copyWith(color: textColor),
                  ),
                ),
                Expanded(
                  flex: 4,
                  child: CustomTextField(
                    initText: targetToner,
                    hint: '타겟 토너 입력',
                    onTextFieldChanged: onTargetTonerInputChanged,
                  ),
                ),
              ],
            ),
          const SizedBox(height: padding16),
          Row(
            children: [
              Expanded(
                child: CustomButton(
                  text: '삭제',
                  customButtonTheme: CustomButtonTheme.light,
                  onPressed: onDeleteButtonPressed,
                ),
              ),
              if (onsaveButtonPressed != null) ...[
                const SizedBox(width: padding16),
                Expanded(
                  child: CustomButton(
                    text: '저장',
                    customButtonTheme: CustomButtonTheme.primary,
                    onPressed: onsaveButtonPressed,
                  ),
                ),
              ]
            ],
          )
        ],
      ),
    );
  }
}
