import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pokerspot_partner_app/presentation/widgets/dialogs/picker_dialog/picker_dialog_utils.dart';
import 'package:pokerspot_partner_app/presentation/widgets/dialogs/picker_dialog_with_checkbox/picker_dialog_with_checkbox_utils.dart';
import 'package:pokerspot_partner_app/common/constants/assets.dart';
import 'package:pokerspot_partner_app/common/constants/sizes.dart';
import 'package:pokerspot_partner_app/common/routes/base/shop.dart';
import 'package:pokerspot_partner_app/common/theme/color.dart';
import 'package:pokerspot_partner_app/presentation/dialog/toast.dart';
import 'package:pokerspot_partner_app/presentation/views/sections/shop/new/process/components/steps.dart';
import 'package:pokerspot_partner_app/presentation/views/sections/shop/new/process/operation/components/pub.dart';
import 'package:pokerspot_partner_app/presentation/views/sections/shop/new/process/operation/components/time.dart';
import 'package:pokerspot_partner_app/presentation/views/sections/shop/new/process/operation/components/warning.dart';
import 'package:pokerspot_partner_app/presentation/widgets/button/custom_button.dart';
import 'package:pokerspot_partner_app/presentation/widgets/button/custom_outlined_button.dart';
import 'package:provider/provider.dart';

import '../../../../../../../../data/models/store/create_store_request.dart';
import '../../../../../../../../locator.dart';
import '../../../../../../../providers/create_store_provider.dart';

class ShopProcessOperationView extends StatefulWidget {
  const ShopProcessOperationView({super.key});

  @override
  State<ShopProcessOperationView> createState() =>
      _ShopProcessOperationViewState();
}

class _ShopProcessOperationViewState extends State<ShopProcessOperationView> {
  final _provider = locator<CreateStoreProvider>();
  int _openTimeIndex = 0;
  int _closeTimeIndex = 0;
  bool _isChecked = false;

  CreateStoreModel get _store => _provider.store;

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

  @override
  void initState() {
    super.initState();

    _isChecked = _store.closeTime == null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('신규 매장 등록')),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Container(
                  padding: const EdgeInsets.all(padding16),
                  color: lightColorScheme.surface,
                  child: Consumer<CreateStoreProvider>(builder: (_, __, ___) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        const ShopProcessSteps(index: 4),
                        const SizedBox(height: padding16),
                        Text(
                          '운영 정보',
                          style: Theme.of(context).textTheme.headlineSmall,
                        ),
                        const SizedBox(height: padding10),
                        Text(
                          '운영 정보를 입력해주세요.',
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                        const SizedBox(height: padding48),

                        // 영업 시간
                        Text(
                          '영업시간',
                          style:
                              Theme.of(context).textTheme.labelLarge!.copyWith(
                                    fontWeight: FontWeight.w500,
                                  ),
                        ),
                        const SizedBox(height: padding16),
                        Row(
                          children: [
                            ShopProcessOperationTime(
                              onTap: () {
                                _buildStartTimePickerDialog(
                                  startIndex: 0,
                                  title: '오픈시간 선택',
                                  onItemChanged: (value) {
                                    _openTimeIndex = value;
                                  },
                                  onSubmit: () {
                                    _provider.setStore(
                                      _store.copyWith(
                                        openTime: _times()[_openTimeIndex],
                                      ),
                                      notify: true,
                                    );
                                  },
                                );
                              },
                              text: '오픈시간',
                              time: _store.openTime,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(padding10),
                              child: Text(
                                '~',
                                style: Theme.of(context).textTheme.labelLarge,
                              ),
                            ),
                            ShopProcessOperationTime(
                              onTap: () {
                                _buildFinishTimePickerDialog(
                                  startIndex: _openTimeIndex,
                                  title: '마감시간 선택',
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
                                    _provider.setStore(
                                      _store.copyWith(
                                        closeTime: (_isChecked
                                                ? null
                                                : times.length ==
                                                        _closeTimeIndex
                                                    ? null
                                                    : times[_closeTimeIndex])
                                            ?.replaceAll('익일 ', ''),
                                      ),
                                      notify: true,
                                    );
                                  },
                                );
                              },
                              text: '마감시간',
                              time: _store.closeTime ?? '마감시까지',
                            ),
                          ],
                        ),
                        const SizedBox(height: padding32),

                        // 펍 종류
                        Text(
                          '펍 종류',
                          style:
                              Theme.of(context).textTheme.labelLarge!.copyWith(
                                    fontWeight: FontWeight.w500,
                                  ),
                        ),
                        const SizedBox(height: padding16),
                        Row(
                          children: [
                            Container(
                              color: lightColorScheme.surface,
                              child: ShopProcessOperationPub(
                                asset: Assets.tonerPubOff.path,
                                enabledAsset: Assets.tonerPubOn.path,
                                text: '토너펍',
                                isEnabled: _store.type == 'MTT',
                                onTap: () {
                                  _provider.setStore(
                                    _store.copyWith(type: 'MTT'),
                                    notify: true,
                                  );
                                },
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: padding32),
                        const Divider(),
                        const SizedBox(height: padding32),
                        Row(
                          children: [
                            const Icon(Icons.info_outline_rounded, size: 24),
                            const SizedBox(width: 6),
                            Expanded(
                              child: Text(
                                '신규 매장 등록 시 꼭 확인해주세요!',
                                style: Theme.of(context)
                                    .textTheme
                                    .titleLarge!
                                    .copyWith(
                                      color: customColorScheme.onSurface2,
                                    ),
                              ),
                            ),
                          ],
                        ),
                        const ShopProcessOperationWarning(),
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 6,
                            bottom: padding10,
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(width: 4),
                              Text(
                                '·',
                                style: Theme.of(context)
                                    .textTheme
                                    .labelMedium!
                                    .copyWith(
                                      color: customColorScheme.onSurface4,
                                    ),
                              ),
                              const SizedBox(width: 6),
                              Expanded(
                                child: Text(
                                  '그 이외 포커스팟은 홀덤펍의 정보 중개자로서, 해당 서비스 제공의 당사자가 아님을 고지하고 서비스의 예약 이용 및 환불, 불법적인 행위와 관련된 의무와 책임은 각 서비스 제공자에게 있습니다.',
                                  style: Theme.of(context)
                                      .textTheme
                                      .labelMedium!
                                      .copyWith(
                                        color: customColorScheme.onSurface3,
                                      ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    );
                  }),
                ),
              ),
            ),
            _buildNextButton(context),
          ],
        ),
      ),
    );
  }

  Container _buildNextButton(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.only(
        top: padding16,
        left: padding16,
        right: padding16,
        bottom: padding32,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 4,
            offset: const Offset(0, -1),
          ),
        ],
      ),
      child: Row(
        children: [
          Expanded(
            child: CustomOutlinedButton(
              text: '이전',
              theme: CustomOutlinedButtonTheme.secondary,
              onPressed: () => Navigator.of(context).pop(),
            ),
          ),
          const SizedBox(width: padding16),
          Expanded(
            child: CustomFilledButton(
              text: '다음',
              theme: CustomFilledButtonTheme.primary,
              onPressed: () {
                if (_provider.validateOperation()) {
                  context.pushNamed(ShopRoutes.processGame.path);
                } else {
                  showToast(context: context, message: '시간을 선택해주세요.');
                }
              },
            ),
          ),
        ],
      ),
    );
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
  }) {
    showPickerDialogWithCheckbox(
      title: '마감시간 선택',
      context: context,
      selections: _times(startIndex: startIndex),
      onCancel: () {},
      onConfirm: onSubmit,
      checkboxLabel: '마감 시까지',
      isChecked: _store.closeTime == null,
      onCheckboxChanged: onCheckboxChanged,
      onSelectedItemChanged: onItemChanged,
    );
  }
}
