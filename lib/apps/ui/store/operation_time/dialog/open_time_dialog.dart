import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pokerspot_partner_app/apps/global/global.dart';
import 'package:pokerspot_partner_app/apps/ui/store/operation_time/providers/operation_time_data.dart';
import 'package:pokerspot_partner_app/common/time_picker.dart';

class StoreOpenTimeDialog extends StatefulHookConsumerWidget {
  const StoreOpenTimeDialog({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _StoreOpenTimeDialogState();
}

class _StoreOpenTimeDialogState extends ConsumerState<StoreOpenTimeDialog> {
  @override
  Widget build(BuildContext context) {
    final openTime = ref.watch(storeOperationTimeDataProvider).openTime;
    final openMinute = ref.watch(storeOperationTimeDataProvider).openMinute;

    return Container(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            '오픈 시간 선택',
            style: textTheme.titleMedium!.copyWith(color: colorGrey20),
          ),
          const SizedBox(height: 16),
          Row(
            children: [
              Expanded(
                child: PTimePicker(
                  value: int.parse(openTime),
                  minValue: 0,
                  maxValue: 23,
                  handleChenge: (int newOpenTime) {
                    ref
                        .read(storeOperationTimeDataProvider.notifier)
                        .setStoreOpenTime(newOpenTime.toString());
                  },
                ),
              ),
              const SizedBox(width: 8),
              const Text(
                ":",
                style: TextStyle(
                  color: colorGrey70,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(width: 8),
              Expanded(
                child: PTimePicker(
                  value: int.parse(openMinute),
                  minValue: 0,
                  maxValue: 30,
                  step: 30,
                  handleChenge: (int value) {
                    ref
                        .read(storeOperationTimeDataProvider.notifier)
                        .setStoreOpenMinute(value.toString());
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
