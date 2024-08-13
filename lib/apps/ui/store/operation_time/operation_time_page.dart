import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
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

    final String openTimeValue = '$openTime시 ${openMinute.padLeft(2, '0')}분';
    final String closeTimeValue = '$closeTime시 ${closeMinute.padLeft(2, '0')}분';

    return Scaffold(
      appBar: AppBar(
        title: const Text('영업 시간 관리'),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              const Caption(
                title: '시간 단위 안내',
                caption: """
        24시간 단위로 선택해주세요.
        00시는 자정, 12시는 정오입니다.\n
        오픈 시간과 마감 시간은 서로 다르게 선택해주세요.
        (예: 오픈 시간과 마감 시간이 모두 10:00 일 수 없어요.)""",
              ),
              const SizedBox(height: 16),
              TimePickerTextField(
                labelText: '오픈 시간',
                hintText: '오픈 시간을 선택해주세요.',
                valueText: openTimeValue,
                handleClick: () => _handleOpenTimeClick(context),
              ),
              const SizedBox(height: 16),
              TimePickerTextField(
                labelText: '마감 시간',
                hintText: '마감 시간을 선택해주세요.',
                valueText: closeTimeValue,
                handleClick: () => _handleCloseTimeClick(context),
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
      ),
    );
  }

  Future<dynamic> _handleOpenTimeClick(BuildContext context) {
    return showAdaptiveDialog(
      context: context,
      builder: (context) {
        return AlertDialog.adaptive(
          title: const Text('오픈 시간 선택'),
          content: const StoreOpenTimeDialog(),
          actions: [
            TextButton(
              onPressed: () => context.pop(),
              child: const Text('확인'),
            ),
          ],
        );
      },
    );
  }

  Future<dynamic> _handleCloseTimeClick(BuildContext context) {
    return showAdaptiveDialog(
      context: context,
      builder: (context) {
        return AlertDialog.adaptive(
          title: const Text('마감 시간 선택'),
          content: const StoreCloseTimeDialog(),
          actions: [
            TextButton(
              onPressed: () => context.pop(),
              child: const Text('확인'),
            ),
          ],
        );
      },
    );
  }
}
