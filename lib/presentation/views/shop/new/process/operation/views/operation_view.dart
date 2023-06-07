import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pokerspot_partner_app/common/constants/assets.dart';
import 'package:pokerspot_partner_app/common/constants/sizes.dart';
import 'package:pokerspot_partner_app/common/routes/base/shop.dart';
import 'package:pokerspot_partner_app/common/theme/color.dart';
import 'package:pokerspot_partner_app/common/theme/typography.dart';
import 'package:pokerspot_partner_app/presentation/dialog/toast.dart';
import 'package:pokerspot_partner_app/presentation/views/shop/new/process/components/steps.dart';
import 'package:pokerspot_partner_app/presentation/views/shop/new/process/operation/components/pub.dart';
import 'package:pokerspot_partner_app/presentation/views/shop/new/process/operation/components/time.dart';
import 'package:pokerspot_partner_app/presentation/views/shop/new/process/operation/components/warning.dart';
import 'package:pokerspot_partner_app/presentation/widgets/app_bar/app_bar.dart';
import 'package:pokerspot_partner_app/presentation/widgets/button/custom_button.dart';
import 'package:pokerspot_partner_app/presentation/widgets/divider/divider.dart';
import 'package:provider/provider.dart';

import '../../../../../../../common/components/dialogs/picker_dialog.dart';
import '../../../../../../../data/models/store/create_store_request.dart';
import '../../../../../../../locator.dart';
import '../../../../../../providers/create_store_provider.dart';

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
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        customAppBarTheme: CustomAppBarTheme.white,
        customAppBarLeftSide: CustomAppBarLeftSide.cancelButton,
        customAppBarCenter: CustomAppBarCenter.text,
        text: '신규 매장 등록',
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(1),
          child: Divider(color: borderColor, height: 1, thickness: 1),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Container(
                  padding: const EdgeInsets.all(padding16),
                  color: backgroundColor,
                  child: Consumer<CreateStoreProvider>(builder: (_, __, ___) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        const ShopProcessSteps(index: 4),
                        const SizedBox(height: padding16),
                        Text('운영 정보', style: headlineSmall),
                        const SizedBox(height: padding10),
                        Text('운영 정보를 입력해주세요.', style: bodySmall),
                        const SizedBox(height: padding48),

                        // 영업 시간
                        Text(
                          '영업시간',
                          style: label.copyWith(
                            color: textColor,
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
                                          openTime: _times()[_openTimeIndex]),
                                      notify: true,
                                    );
                                    Navigator.pop(context);
                                  },
                                );
                              },
                              text: '오픈시간',
                              time: _store.openTime,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(padding10),
                              child: Text('~', style: label),
                            ),
                            ShopProcessOperationTime(
                              onTap: () {
                                _buildStartTimePickerDialog(
                                  startIndex: _openTimeIndex,
                                  title: '마감시간 선택',
                                  onItemChanged: (value) {
                                    _closeTimeIndex = value;
                                  },
                                  onSubmit: () {
                                    final times =
                                        _times(startIndex: _openTimeIndex);

                                    _provider.setStore(
                                      _store.copyWith(
                                          closeTime:
                                              times.length == _closeTimeIndex
                                                  ? null
                                                  : times[_closeTimeIndex]),
                                      notify: true,
                                    );
                                    Navigator.pop(context);
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
                          style: label.copyWith(
                            color: textColor,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const SizedBox(height: padding16),
                        Row(
                          children: [
                            ShopProcessOperationPub(
                              asset: Assets.tonerPubOff.path,
                              enabledAsset: Assets.tonerPubOn.path,
                              text: '토너펍',
                              isEnabled: _store.type == 'MTT',
                              onTap: () {
                                _provider.setStore(_store.copyWith(type: 'MTT'),
                                    notify: true);
                              },
                            ),

                            /// 현재 토너펍만 운영
                            /*
                            const SizedBox(width: padding10),
                            ShopProcessOperationPub(
                              asset: Assets.ringPubOff.path,
                              enabledAsset: Assets.ringPubOn.path,
                              text: '기타펍 A',
                              isEnabled: _store.type == 'ETC1',
                              onTap: () {
                                _provider.setStore(
                                    _store.copyWith(type: 'ETC1'),
                                    notify: true);
                              },
                            ),
                            const SizedBox(width: padding10),
                            ShopProcessOperationPub(
                              asset: Assets.etcPubOff.path,
                              enabledAsset: Assets.etcPubOn.path,
                              text: '기타펍 B',
                              isEnabled: _store.type == 'ETC2',
                              onTap: () {
                                _provider.setStore(
                                    _store.copyWith(type: 'ETC2'),
                                    notify: true);
                              },
                            ),
                             */
                          ],
                        ),
                        const SizedBox(height: padding32),
                        const CustomDivider(),
                        const SizedBox(height: padding32),
                        Row(
                          children: [
                            Icon(
                              Icons.info_outline_rounded,
                              color: textColor,
                              size: 20,
                            ),
                            const SizedBox(width: 6),
                            Expanded(
                              child: Text(
                                '신규 매장 등록시 꼭 확인해주세요!',
                                style: titleMedium.copyWith(color: textColor),
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
                                style: label.copyWith(
                                  color: greyVariant1,
                                  fontWeight: FontWeight.w900,
                                ),
                              ),
                              const SizedBox(width: 6),
                              Expanded(
                                child: Text(
                                  '그 이외 포커스팟은 홀덤펍의 정보 중개자로서, 해당 서비스 제공의 당사자가 아님을 고지하고 서비스의 예약 이용 및 환불, 불법적인 행위와 관련된 의무와 책임은 각 서비스 제공자에게 있습니다.',
                                  style: caption.copyWith(color: greyVariant1),
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
            child: CustomButton(
              text: '이전',
              customButtonTheme: CustomButtonTheme.light,
              onPressed: () => Navigator.of(context).pop(),
            ),
          ),
          const SizedBox(width: padding16),
          Expanded(
            child: CustomButton(
              text: '다음',
              customButtonTheme: CustomButtonTheme.primary,
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

  void _buildStartTimePickerDialog(
      {required String title,
      int startIndex = 0,
      required Function(int) onItemChanged,
      required VoidCallback onSubmit}) {
    showDialog(
      context: context,
      builder: (_) {
        final times = _times(startIndex: startIndex);
        if (startIndex != 0) {
          times.add('마감시까지');
        }
        return PickerDialog(
          onCancel: () {
            Navigator.pop(context);
          },
          onSubmit: onSubmit,
          onItemChanged: onItemChanged,
          selections: times,
          title: title,
        );
      },
    );
  }
}
