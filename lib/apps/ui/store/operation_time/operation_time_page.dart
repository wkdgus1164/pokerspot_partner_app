import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pokerspot_partner_app/apps/ui/store/operation_time/components/time_picker.dart';
import 'package:pokerspot_partner_app/apps/ui/store/operation_time/dialog/close_time_dialog.dart';
import 'package:pokerspot_partner_app/apps/ui/store/operation_time/dialog/open_time_dialog.dart';
import 'package:pokerspot_partner_app/apps/ui/store/operation_time/providers/operation_time_data.dart';
import 'package:pokerspot_partner_app/common/caption/caption.dart';

class StoreOperationTimePage extends StatefulHookConsumerWidget {
  const StoreOperationTimePage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _StoreOperationTimePageState();
}

class _StoreOperationTimePageState
    extends ConsumerState<StoreOperationTimePage> {
  @override
  Widget build(BuildContext context) {
    final data = ref.watch(storeOperationTimeDataProvider);

    final String openTime = data.openTime;
    final String openMinute = data.openMinute;

    final String closeTime = data.closeTime;
    final String closeMinute = data.closeMinute;

    return Scaffold(
      appBar: AppBar(
        title: const Text('영업 시간 관리'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            const Caption(
              title: '시간 단위 안내',
              caption:
                  '24시간 단위로 선택해주세요.\n00시는 자정, 12시는 정오입니다.\n\n오픈 시간과 마감 시간은 서로 다르게 선택해주세요.\n(예: 오픈 시간과 마감 시간이 모두 10:00 일 수 없어요.)',
            ),
            const SizedBox(height: 16),
            TimePickerTextField(
              labelText: '오픈 시간',
              hintText: '오픈 시간을 선택해주세요.',
              valueText:
                  '${openTime.padLeft(2, '0')}시 ${openMinute.padLeft(2, '0')}분',
              handleClick: () {
                showModalBottomSheet(
                  context: context,
                  enableDrag: false,
                  useSafeArea: true,
                  builder: (context) {
                    return const StoreOpenTimeDialog();
                  },
                );
              },
            ),
            const SizedBox(height: 16),
            TimePickerTextField(
              labelText: '마감 시간',
              hintText: '마감 시간을 선택해주세요.',
              valueText:
                  '${closeTime.padLeft(2, '0')}시 ${closeMinute.padLeft(2, '0')}분',
              handleClick: () {
                showModalBottomSheet(
                  context: context,
                  enableDrag: false,
                  useSafeArea: true,
                  builder: (context) {
                    return const StoreCloseTimeDialog();
                  },
                );
              },
            ),
            const Spacer(),
            SizedBox(
              width: double.infinity,
              child: FilledButton(
                onPressed: () {},
                child: const Text('적용하기'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
