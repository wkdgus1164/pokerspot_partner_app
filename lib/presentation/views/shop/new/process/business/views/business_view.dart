import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pokerspot_partner_app/common/components/buttons/verify_button.dart';
import 'package:pokerspot_partner_app/common/constants/sizes.dart';
import 'package:pokerspot_partner_app/common/routes/base/shop.dart';
import 'package:pokerspot_partner_app/common/theme/color.dart';
import 'package:pokerspot_partner_app/data/models/store/create_store_request.dart';
import 'package:pokerspot_partner_app/locator.dart';
import 'package:pokerspot_partner_app/presentation/dialog/toast.dart';
import 'package:pokerspot_partner_app/presentation/providers/create_store_provider.dart';
import 'package:pokerspot_partner_app/presentation/views/shop/new/process/components/steps.dart';
import 'package:pokerspot_partner_app/presentation/widgets/app_bar/app_bar.dart';
import 'package:pokerspot_partner_app/presentation/widgets/button/custom_button.dart';
import 'package:pokerspot_partner_app/presentation/widgets/text_field/text_field_set.dart';
import 'package:provider/provider.dart';

class ShopProcessBusinessView extends StatelessWidget {
  ShopProcessBusinessView({super.key});

  final _provider = locator<CreateStoreProvider>();

  CreateStoreModel get _store => _provider.store;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        theme: CustomAppBarTheme.light,
        left: Icons.keyboard_arrow_left_rounded,
        text: '신규 매장 등록',
      ),
      body: SafeArea(
        child: Consumer<CreateStoreProvider>(builder: (_, __, ___) {
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
                        const ShopProcessSteps(index: 1),
                        const SizedBox(height: padding16),
                        Text(
                          '사업자 정보',
                          style: Theme.of(context).textTheme.headlineSmall,
                        ),
                        const SizedBox(height: padding10),
                        Text(
                          '사업자 정보를 입력해주세요.',
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                        const SizedBox(height: padding48),

                        // 사업자등록번호
                        _buildBusinessNumber(),
                        const SizedBox(height: padding24),

                        // 개업연월일
                        _buildOpenDate(),
                        const SizedBox(height: padding24),

                        // 휴대폰 번호
                        _buildPhone(),
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
        }),
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
      child: Row(children: [
        const Expanded(child: SizedBox()),
        const SizedBox(width: padding16),
        Expanded(
          child: CustomFilledButton(
            text: '다음',
            theme: CustomFilledButtonTheme.primary,
            onPressed: () {
              if (_provider.checkedBiz) {
                context.pushNamed(ShopRoutes.processEssential.path);
              } else {
                showToast(context: context, message: '사업자 인증 미완료');
              }
            },
          ),
        ),
      ]),
    );
  }

  VerifyButton _buildVerify(BuildContext context) {
    return VerifyButton(
      label: '사업자 인증',
      isVerified: _provider.checkedBiz,
      onPressed: _provider.checkedBiz
          ? null
          : () async {
              final error = await _provider.bizValidate();
              if (error != null && context.mounted) {
                showToast(context: context, message: error);
              }
            },
    );
  }

  CustomTextFieldSet _buildPhone() {
    return CustomTextFieldSet(
      initText: _store.bizStartYMD,
      inputLabel: '개업연월일',
      keyboardType: TextInputType.number,
      isPassword: false,
      inputHintText: '예시 : 20230519',
      onTextFieldChanged: (value) {
        _provider.setStore(_store.copyWith(bizStartYMD: value));
      },
      captionText: '※ 대표자 명의의 휴대폰 번호를 입력해주세요.',
    );
  }

  CustomTextFieldSet _buildOpenDate() {
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
      captionText: '※ 사업자 등록증에 기재된 대표자명을 입력해주세요.',
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
