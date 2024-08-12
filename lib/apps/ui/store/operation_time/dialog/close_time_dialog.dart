import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pokerspot_partner_app/apps/global/global.dart';
import 'package:pokerspot_partner_app/apps/ui/store/operation_time/providers/operation_time_data.dart';
import 'package:pokerspot_partner_app/common/time_picker.dart';

class StoreCloseTimeDialog extends StatefulHookConsumerWidget {
  const StoreCloseTimeDialog({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _StoreCloseTimeDialogState();
}

class _StoreCloseTimeDialogState extends ConsumerState<StoreCloseTimeDialog> {
  @override
  Widget build(BuildContext context) {
    final closeTime = ref.watch(storeOperationTimeDataProvider).closeTime;
    final closeMinute = ref.watch(storeOperationTimeDataProvider).closeMinute;

    return Container(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            '마감 시간 선택',
            style: textTheme.titleMedium!.copyWith(color: colorGrey20),
          ),
          const SizedBox(height: 16),
          Row(
            children: [
              Expanded(
                child: PTimePicker(
                  value: int.parse(closeTime),
                  minValue: 0,
                  maxValue: 23,
                  handleChenge: (int value) {
                    ref
                        .read(storeOperationTimeDataProvider.notifier)
                        .setStoreCloseTime(value.toString());
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
                  value: int.parse(closeMinute),
                  minValue: 0,
                  maxValue: 30,
                  step: 30,
                  handleChenge: (int value) {
                    ref
                        .read(storeOperationTimeDataProvider.notifier)
                        .setStoreCloseMinute(value.toString());
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
