import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pokerspot_partner_app/apps/global/global.dart';

class StoreBusinessInfoPage extends StatefulHookConsumerWidget {
  const StoreBusinessInfoPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _StoreBusinessInfoPageState();
}

class _StoreBusinessInfoPageState extends ConsumerState<StoreBusinessInfoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('사업자 정보 관리'),
        actions: [
          IconButton(
            icon: const Icon(Icons.edit_rounded),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              '사업자 정보',
              style: textTheme.titleMedium!.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16),
            Container(
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(
                  Radius.circular(16),
                ),
                border: Border.all(color: colorGrey90),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16),
                    child: Row(
                      children: [
                        Text(
                          '상호명',
                          style: textTheme.labelLarge!.copyWith(
                            color: colorGrey60,
                          ),
                        ),
                        const Spacer(),
                        Text(
                          '상호명',
                          style: textTheme.bodyMedium!.copyWith(
                            color: colorGrey20,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Divider(),
                  Padding(
                    padding: const EdgeInsets.all(16),
                    child: Row(
                      children: [
                        Text(
                          '대표자명',
                          style: textTheme.labelLarge!.copyWith(
                            color: colorGrey60,
                          ),
                        ),
                        const Spacer(),
                        Text(
                          '대표자명',
                          style: textTheme.bodyMedium!.copyWith(
                            color: colorGrey20,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Divider(),
                  Padding(
                    padding: const EdgeInsets.all(16),
                    child: Row(
                      children: [
                        Text(
                          '주소',
                          style: textTheme.labelLarge!.copyWith(
                            color: colorGrey60,
                          ),
                        ),
                        const Spacer(),
                        Text(
                          '주소',
                          style: textTheme.bodyMedium!.copyWith(
                            color: colorGrey20,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Divider(),
                  Padding(
                    padding: const EdgeInsets.all(16),
                    child: Row(
                      children: [
                        Text(
                          '업종',
                          style: textTheme.labelLarge!.copyWith(
                            color: colorGrey60,
                          ),
                        ),
                        const Spacer(),
                        Text(
                          '업종',
                          style: textTheme.bodyMedium!.copyWith(
                            color: colorGrey20,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Divider(),
                  Padding(
                    padding: const EdgeInsets.all(16),
                    child: Row(
                      children: [
                        Text(
                          '업태',
                          style: textTheme.labelLarge!.copyWith(
                            color: colorGrey60,
                          ),
                        ),
                        const Spacer(),
                        Text(
                          '업태',
                          style: textTheme.bodyMedium!.copyWith(
                            color: colorGrey20,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
