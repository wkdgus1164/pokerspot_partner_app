import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pokerspot_partner_app/common/constants/sizes.dart';
import 'package:pokerspot_partner_app/common/routes/routes.dart';
import 'package:pokerspot_partner_app/common/theme/color.dart';
import 'package:pokerspot_partner_app/data/models/store/create_store_request.dart';
import 'package:pokerspot_partner_app/locator.dart';
import 'package:pokerspot_partner_app/presentation/effects/card_shadow.dart';
import 'package:pokerspot_partner_app/presentation/providers/create_store_provider.dart';
import 'package:pokerspot_partner_app/presentation/views/sections/shop/new/process/components/progress_bar.dart';
import 'package:pokerspot_partner_app/presentation/widgets/button/custom_button.dart';
import 'package:pokerspot_partner_app/presentation/widgets/button/verify_button.dart';
import 'package:pokerspot_partner_app/presentation/widgets/dialogs/info_dialog/information_dialog_utils.dart';
import 'package:pokerspot_partner_app/presentation/widgets/info_box/info_box.dart';
import 'package:pokerspot_partner_app/presentation/widgets/text_field/text_field_set.dart';
import 'package:provider/provider.dart';

class ShopProcessBusinessView extends StatelessWidget {
  ShopProcessBusinessView({super.key});

  final _provider = locator<CreateStoreProvider>();

  CreateStoreModel get _store => _provider.store;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('신규 매장 등록')),
      body: SafeArea(
        child: Consumer<CreateStoreProvider>(
          builder: (_, __, ___) {
            return Column(
              children: [
                Expanded(
                  child: SingleChildScrollView(
                    child: Container(
                      padding: const EdgeInsets.all(padding16),
                      color: lightColorScheme.surface,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          const CustomProgressBar(percent: 0.2),
                          const SizedBox(height: padding24),
                          Text(
                            '사업자 정보',
                            style: Theme.of(context)
                                .textTheme
                                .titleLarge!
                                .copyWith(
                                  color: customColorScheme.onSurface1,
                                  fontWeight: FontWeight.bold,
                                ),
                          ),
                          const SizedBox(height: padding10),
                          Text(
                            '사업자 정보를 입력해주세요.',
                            style: Theme.of(context)
                                .textTheme
                                .labelLarge!
                                .copyWith(
                                  color: customColorScheme.onSurface3,
                                ),
                          ),
                          const SizedBox(height: padding24),

                          // 사업자등록번호
                          _buildBusinessNumber(),
                          const SizedBox(height: padding10),

                          const InfoBox(
                            text:
                                '해당 사업자 정보로 이미 등록된 매장 혹은 등록 대기 중인 매장이 있을 경우, 동일한 사업자 정보로 신규 매장 등록이 어려울 수 있어요.',
                          ),
                          const SizedBox(height: padding24),

                          // 대표자명
                          _buildName(),
                          const SizedBox(height: padding10),

                          const InfoBox(
                            text: '포커스팟에 회원가입 시 등록하셨던 명의자와 명의와 일치해야 해요.',
                          ),
                          const SizedBox(height: padding24),

                          // 개업연월일
                          _buildOpenDate(),
                          const SizedBox(height: padding32),

                          // 사업자인증
                          _buildVerify(context),
                        ],
                      ),
                    ),
                  ),
                ),
                _buildNextButton(context),
              ],
            );
          },
        ),
      ),
    );
  }

  Container _buildNextButton(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(padding16),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [toolbarShadow],
      ),
      child: Row(children: [
        Expanded(
          child: CustomFilledButton(
            text: '다음',
            theme: CustomFilledButtonTheme.primary,
            onPressed: () {
              if (_provider.checkedBiz) {
                context.push(CustomRouter.shopProcessEssential.path);
              } else {
                showInformationDialog(
                  context: context,
                  title: '안내',
                  content: '사업자 인증이 완료되지 않았어요.',
                  confirmText: '확인',
                  onConfirm: () {},
                );
              }
            },
          ),
        ),
      ]),
    );
  }

  VerifyButton _buildVerify(BuildContext context) {
    return VerifyButton(
      label: '사업자 인증하기',
      isVerified: _provider.checkedBiz,
      onPressed: _provider.checkedBiz
          ? () {}
          : () async {
              String? error = await _provider.storeValidate(_store.bizNumber);
              if (error != null) {
                if (context.mounted) {
                  showInformationDialog(
                    context: context,
                    title: '안내',
                    content: error,
                    onConfirm: () {},
                  );
                }
              } else {
                error = await _provider.bizValidate();
                if (error != null && context.mounted) {
                  showInformationDialog(
                    context: context,
                    title: '안내',
                    content: error,
                    onConfirm: () {},
                  );
                }
              }
            },
    );
  }

  CustomTextFieldSet _buildOpenDate() {
    return CustomTextFieldSet(
      initText: _store.bizStartYMD,
      inputLabel: '개업연월일',
      keyboardType: TextInputType.number,
      isPassword: false,
      inputHintText: '예시) 20230519',
      onTextFieldChanged: (value) {
        _provider.setStore(_store.copyWith(bizStartYMD: value));
      },
      captionText: '사업자 등록증에 기재된 개업연월일을 입력해주세요.',
    );
  }

  CustomTextFieldSet _buildName() {
    return CustomTextFieldSet(
      inputLabel: '대표자명',
      initText: _store.ownerName,
      keyboardType: TextInputType.text,
      isPassword: false,
      inputHintText: '대표자명 입력',
      onTextFieldChanged: (value) {
        _provider.setStore(
          _store.copyWith(ownerName: value),
          notify: false,
        );
      },
      captionText: '사업자 등록증에 기재된 대표자명을 입력해주세요.',
    );
  }

  CustomTextFieldSet _buildBusinessNumber() {
    return CustomTextFieldSet(
      inputLabel: '사업자등록번호',
      initText: _store.bizNumber,
      keyboardType: TextInputType.number,
      isPassword: false,
      inputHintText: '-제외 숫자만 입력',
      onTextFieldChanged: (value) {
        _provider.setStore(_store.copyWith(bizNumber: value));
      },
    );
  }
}
