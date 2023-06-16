import 'package:flutter/material.dart';
import 'package:pokerspot_partner_app/common/components/dialogs/input_dialog_with_checkbox/input_dialog_with_checkbox_utils.dart';
import 'package:pokerspot_partner_app/common/components/dialogs/picker_dialog/picker_dialog_utils.dart';
import 'package:pokerspot_partner_app/common/constants/sizes.dart';
import 'package:pokerspot_partner_app/common/theme/color.dart';
import 'package:pokerspot_partner_app/presentation/widgets/button/custom_button.dart';
import 'package:pokerspot_partner_app/presentation/widgets/button/custom_outlined_button.dart';
import 'package:pokerspot_partner_app/presentation/widgets/checkbox/checkbox.dart';
import 'package:pokerspot_partner_app/presentation/widgets/text_field/text_field.dart';

import '../../../../../../../data/models/store/create_store_request.dart';

class GameItem extends StatefulWidget {
  const GameItem({
    super.key,
    required this.title,
    required this.isAllDayRunning,
    required this.onAllDayRunningChanged,
    required this.tonerType,
    required this.onTonerTypeChanged,
    required this.gtdMinReward,
    required this.onGtdMinRewardChanged,
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
  final int gtdMinReward;
  final Function(int) onGtdMinRewardChanged;
  final int joinCost;
  final Function(int) onJoinCostInputChanged;
  final int entryStart;
  final Function(int) onEntryStartInputChanged;
  final int? entryLimit;
  final Function(int?) onEntryLimitInputChanged;
  final String prize;
  final Function(String) onPrizeInputChanged;
  final String targetToner;
  final Function(String) onTargetTonerInputChanged;
  final bool isDeleteButtonEnabled;
  final Function() onDeleteButtonPressed;
  final bool isSaveButtonEnabled;
  final VoidCallback? onsaveButtonPressed;

  @override
  State<GameItem> createState() => _GameItemState();
}

class _GameItemState extends State<GameItem> {
  int _gtdMinReward = 0;
  int _joinCost = 10000;
  int _entryMin = 1;
  int? _entryMax;
  bool _isEntryMaxCheck = false;
  String _prize = '50%';

  @override
  void initState() {
    super.initState();

    _gtdMinReward = widget.gtdMinReward;
    _joinCost = widget.joinCost;
    _entryMin = widget.entryStart;
    _entryMax = widget.entryLimit;
    _isEntryMaxCheck = _entryMax == null;
    _prize = widget.prize;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: padding16),
      padding: const EdgeInsets.all(padding16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(defaultRadius),
        border: Border.all(color: lightColorScheme.outline),
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
          const SizedBox(height: padding10),
          Text(widget.title, style: Theme.of(context).textTheme.titleLarge),
          const SizedBox(height: padding16),
          InkWell(
            onTap: widget.onAllDayRunningChanged,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CustomCheckbox(
                  value: widget.isAllDayRunning,
                  onChanged: widget.onAllDayRunningChanged,
                ),
                const SizedBox(width: padding10),
                Text('매일 진행', style: Theme.of(context).textTheme.bodyLarge),
              ],
            ),
          ),
          const SizedBox(height: padding16),
          Row(
            children: [
              Expanded(
                child: Text(
                  '종류',
                  style: Theme.of(context).textTheme.titleSmall,
                ),
              ),
              Expanded(
                flex: 4,
                child: LayoutBuilder(
                  builder: (ctx, constraints) {
                    final minWidth = constraints.minWidth / 3.1;
                    return SizedBox(
                      height: 40,
                      child: ToggleButtons(
                        onPressed: widget.onTonerTypeChanged,
                        borderRadius: const BorderRadius.all(
                          Radius.circular(defaultRadius),
                        ),
                        constraints: BoxConstraints(
                          minWidth: minWidth,
                          minHeight: constraints.minHeight,
                        ),
                        selectedBorderColor: lightColorScheme.primary,
                        selectedColor: Colors.white,
                        fillColor: lightColorScheme.primary,
                        color: lightColorScheme.primary,
                        isSelected: [
                          widget.tonerType == TonerType.daily,
                          widget.tonerType == TonerType.seed,
                          widget.tonerType == TonerType.gtd,
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
                          Container(
                            alignment: Alignment.center,
                            child: const Text('GTD토너'),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
          if (widget.tonerType == TonerType.gtd) ...[
            const SizedBox(height: padding10),
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Text(
                    '최소 상금',
                    style: Theme.of(context).textTheme.titleSmall,
                  ),
                ),
                Expanded(
                  flex: 4,
                  child: CustomTextField(
                    initText: '${_gtdMinReward ~/ 10000}만',
                    hint: '최소 상금',
                    readOnly: true,
                    onTap: () => showPickerDialog(
                      title: '프라이즈 비율',
                      context: context,
                      autoDismiss: false,
                      onCancel: () {},
                      onConfirm: () {
                        widget.onGtdMinRewardChanged.call(_gtdMinReward);
                      },
                      onSelectedItemChanged: (value) {
                        _gtdMinReward = (value + 10) * 100000;
                      },
                      selections:
                          List.generate(91, (index) => '${(index + 10) * 10}만'),
                    ),
                  ),
                ),
              ],
            ),
          ],
          const SizedBox(height: padding10),
          Row(
            children: [
              Expanded(
                flex: 1,
                child: Text(
                  '참가비',
                  style: Theme.of(context).textTheme.titleSmall,
                ),
              ),
              Expanded(
                flex: 4,
                child: CustomTextField(
                  initText: '${_joinCost ~/ 10000}만'.toString(),
                  readOnly: true,
                  hint: '참가비 입력',
                  onTap: () {
                    showPickerDialog(
                      context: context,
                      title: '참가비',
                      selections: List.generate(30, (index) => '${index + 1}만'),
                      onSelectedItemChanged: (value) {
                        _joinCost = (value + 1) * 10000;
                      },
                      onCancel: () {},
                      onConfirm: () {
                        widget.onJoinCostInputChanged.call(_joinCost);
                      },
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
                  '엔트리',
                  style: Theme.of(context).textTheme.titleSmall,
                ),
              ),
              Expanded(
                flex: 4,
                child: Row(
                  children: [
                    Expanded(
                      child: CustomTextField(
                        initText: widget.entryStart.toString(),
                        keyboardType: TextInputType.number,
                        hint: '엔트리 입력',
                        readOnly: true,
                        onTap: () {
                          showPickerDialog(
                            context: context,
                            title: '최소 엔트리',
                            selections: List.generate(
                                100, (index) => (index + 1).toString()),
                            onSelectedItemChanged: (value) {
                              _entryMin = value + 1;
                            },
                            onCancel: () {},
                            onConfirm: () {
                              widget.onEntryStartInputChanged.call(_entryMin);
                            },
                          );
                        },
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: padding10),
                      child: Text('~'),
                    ),
                    Expanded(
                      child: CustomTextField(
                        initText: _entryMax?.toString() ?? '제한 없음',
                        keyboardType: TextInputType.number,
                        hint: '엔트리 입력',
                        onTextFieldChanged: (value) {
                          _entryMax = int.tryParse(value) ?? 2;
                        },
                        readOnly: true,
                        onTap: () {
                          showInputDialogWithCheckbox(
                            context: context,
                            checkboxLabel: '제한없음',
                            isChecked: _isEntryMaxCheck,
                            disableOnChecked: true,
                            onCheckboxChanged: () {
                              setState(() {
                                _isEntryMaxCheck = !_isEntryMaxCheck;
                                _entryMax = null;
                              });
                            },
                            onTextFieldChanged: (value) {
                              _entryMax = int.tryParse(value);
                            },
                            title: '최대 엔트리',
                            onCancel: () {},
                            onConfirm: () {
                              widget.onEntryLimitInputChanged.call(_entryMax);
                            },
                          );
                        },
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
                  style: Theme.of(context).textTheme.titleSmall,
                ),
              ),
              Expanded(
                flex: 4,
                child: CustomTextField(
                  initText: _prize,
                  hint: '프라이즈 입력',
                  readOnly: true,
                  onTap: () => showPickerDialog(
                    title: '프라이즈 비율',
                    context: context,
                    autoDismiss: false,
                    onCancel: () {},
                    onConfirm: () {
                      widget.onPrizeInputChanged.call(_prize);
                    },
                    onSelectedItemChanged: (value) {
                      _prize = '${50 + (value * 5)}%';
                    },
                    selections:
                        List.generate(11, (index) => '${50 + (index * 5)}%'),
                  ),
                ),
              ),
            ],
          ),
          if (widget.tonerType == TonerType.seed)
            Column(
              children: [
                const SizedBox(height: padding10),
                Row(
                  children: [
                    const SizedBox(height: padding10),
                    Expanded(
                      flex: 1,
                      child: Text(
                        '타겟 토너',
                        style: Theme.of(context).textTheme.titleSmall,
                      ),
                    ),
                    Expanded(
                      flex: 4,
                      child: CustomTextField(
                        initText: widget.targetToner,
                        hint: '타겟 토너 입력',
                        onTextFieldChanged: widget.onTargetTonerInputChanged,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          const SizedBox(height: padding16),
          Row(
            children: [
              Expanded(
                child: CustomOutlinedButton(
                  text: '삭제',
                  theme: CustomOutlinedButtonTheme.secondary,
                  onPressed: widget.onDeleteButtonPressed,
                ),
              ),
              if (widget.onsaveButtonPressed != null) ...[
                const SizedBox(width: padding16),
                Expanded(
                  child: CustomFilledButton(
                    text: '저장',
                    theme: CustomFilledButtonTheme.primary,
                    onPressed: widget.onsaveButtonPressed,
                  ),
                ),
              ],
            ],
          ),
        ],
      ),
    );
  }
}
