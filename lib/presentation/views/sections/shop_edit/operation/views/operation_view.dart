import 'package:flutter/material.dart';
import 'package:pokerspot_partner_app/data/models/partner/partner_store_detail.dart';
import 'package:pokerspot_partner_app/presentation/providers/store_provider.dart';
import 'package:pokerspot_partner_app/presentation/views/sections/shop_edit/operation/views/components/pub_type.dart';
import 'package:pokerspot_partner_app/presentation/views/sections/shop_edit/operation/views/components/running_time.dart';
import 'package:pokerspot_partner_app/presentation/widgets/divider/divider.dart';
import 'package:provider/provider.dart';

import '../../../../../widgets/dialogs/picker_dialog/picker_dialog_utils.dart';
import '../../../../../widgets/dialogs/picker_dialog_with_checkbox/picker_dialog_with_checkbox_utils.dart';

class ShopEditOperationView extends StatefulWidget {
  const ShopEditOperationView({super.key});

  @override
  State<ShopEditOperationView> createState() => _ShopEditOperationViewState();
}

class _ShopEditOperationViewState extends State<ShopEditOperationView> {
  int _openTimeIndex = 0;
  int _closeTimeIndex = 0;
  bool _isChecked = false;

  List<String> _times({int startIndex = 0}) {
    List<String> times = [];
    for (int i = startIndex; i <= 23; i++) {
      String hour = i.toString().padLeft(2, '0');
      times.add('$hour:00');
      times.add('$hour:30');
    }
    for (int i = 0; i <= 11; i++) {
      String hour = i.toString().padLeft(2, '0');
      times.add('익일 $hour:00');
      times.add('익일 $hour:30');
    }
    times.add('익일 12:00');

    return times;
  }

  void _buildStartTimePickerDialog({
    required String title,
    int startIndex = 0,
    required Function(int) onItemChanged,
    required VoidCallback onSubmit,
  }) {
    showPickerDialog(
      title: '오픈시간 선택',
      context: context,
      selections: _times(startIndex: startIndex),
      onCancel: () {},
      onConfirm: onSubmit,
      onSelectedItemChanged: onItemChanged,
    );
  }

  void _buildFinishTimePickerDialog({
    required String title,
    int startIndex = 0,
    required Function(int) onItemChanged,
    required VoidCallback onSubmit,
    required VoidCallback onCheckboxChanged,
    required bool isChecked,
  }) {
    showPickerDialogWithCheckbox(
      title: '마감시간 선택',
      context: context,
      selections: _times(startIndex: startIndex),
      onCancel: () {},
      onConfirm: onSubmit,
      checkboxLabel: '마감 시까지',
      isChecked: isChecked,
      onCheckboxChanged: onCheckboxChanged,
      onSelectedItemChanged: onItemChanged,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<StoreProvider>(builder: (_, provider, __) {
      return Column(
        children: [
          ShopEditOperationRunningTime(
            startAt: provider.store?.openTime ?? '',
            finishAt: provider.store?.closeTime ?? '마감 시까지',
            onStartPressed: () {
              _buildStartTimePickerDialog(
                startIndex: 0,
                title: '오픈시간 선택',
                onItemChanged: (value) {
                  _openTimeIndex = value;
                },
                onSubmit: () {
                  provider.setStore(
                    provider.store!.copyWith(
                      openTime: _times()[_openTimeIndex],
                    ),
                  );
                },
              );
            },
            onFinishPressed: () {
              _buildFinishTimePickerDialog(
                startIndex: _openTimeIndex,
                title: '마감시간 선택',
                isChecked: provider.store!.closeTime == null,
                onItemChanged: (value) {
                  _closeTimeIndex = value;
                },
                onCheckboxChanged: () {
                  _isChecked = !_isChecked;
                },
                onSubmit: () {
                  final times = _times(
                    startIndex: _openTimeIndex,
                  );
                  provider.setStore(
                    provider.store!.copyWith(
                      closeTime: (_isChecked
                              ? null
                              : times.length == _closeTimeIndex
                                  ? null
                                  : times[_closeTimeIndex])
                          ?.replaceAll('익일 ', ''),
                    ),
                  );
                },
              );
            },
          ),
          const CustomDivider(),
          const ShopEditOperationPubType(),
        ],
      );
    });
  }
}
