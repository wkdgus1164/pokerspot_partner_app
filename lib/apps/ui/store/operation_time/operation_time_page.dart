import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pokerspot_partner_app/apps/global/global.dart';
import 'package:pokerspot_partner_app/apps/ui/store/operation_time/components/time_picker.dart';
import 'package:pokerspot_partner_app/common/caption/caption.dart';
import 'package:numberpicker/numberpicker.dart';

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
              caption: '24시간 단위로 선택해주세요.\n00시는 자정, 12시는 정오입니다.',
            ),
            const SizedBox(height: 16),
            TimePickerTextField(
              labelText: '오픈 시간',
              hintText: '오픈 시간을 선택해주세요.',
              handleClick: () {
                showAdaptiveDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog.adaptive(
                      title: const Text('오픈 시간 선택'),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: const Text('취소'),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: const Text('확인'),
                        ),
                      ],
                      content: Row(
                        children: [
                          Expanded(
                            child: NumberPicker(
                              value: 1,
                              minValue: 0,
                              maxValue: 23,
                              decoration: BoxDecoration(
                                border: Border.all(color: colorGrey80),
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(8),
                                ),
                              ),
                              selectedTextStyle: const TextStyle(
                                color: colorGrey40,
                              ),
                              textMapper: (numberText) {
                                return numberText.padLeft(2, '0');
                              },
                              textStyle: const TextStyle(
                                color: colorGrey40,
                              ),
                              onChanged: (value) {},
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
                            child: NumberPicker(
                              value: 1,
                              minValue: 0,
                              maxValue: 30,
                              step: 30,
                              decoration: BoxDecoration(
                                border: Border.all(color: colorGrey80),
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(8),
                                ),
                              ),
                              selectedTextStyle: const TextStyle(
                                color: colorGrey40,
                              ),
                              textMapper: (numberText) {
                                return numberText.padLeft(2, '0');
                              },
                              textStyle: const TextStyle(
                                color: colorGrey40,
                              ),
                              onChanged: (value) {},
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                );
              },
            ),
            const SizedBox(height: 16),
            TimePickerTextField(
              labelText: '마감 시간',
              hintText: '마감 시간을 선택해주세요.',
              handleClick: () {},
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
