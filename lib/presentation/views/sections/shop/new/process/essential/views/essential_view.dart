import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:kpostal/kpostal.dart';
import 'package:pokerspot_partner_app/common/constants/sizes.dart';
import 'package:pokerspot_partner_app/common/routes/routes.dart';
import 'package:pokerspot_partner_app/common/theme/color.dart';
import 'package:pokerspot_partner_app/presentation/effects/card_shadow.dart';
import 'package:pokerspot_partner_app/presentation/providers/create_store_provider.dart';
import 'package:pokerspot_partner_app/presentation/views/sections/shop/new/process/components/progress_bar.dart';
import 'package:pokerspot_partner_app/presentation/views/sections/shop/new/process/essential/components/address_form.dart';
import 'package:pokerspot_partner_app/presentation/widgets/dialogs/info_dialog/information_dialog_utils.dart';
import 'package:pokerspot_partner_app/presentation/widgets/text_field/text_field_set.dart';
import 'package:provider/provider.dart';

import '../../../../../../../../data/models/store/create_store_request.dart';
import '../../../../../../../../locator.dart';

class ShopProcessEssentialView extends StatelessWidget {
  ShopProcessEssentialView({super.key});

  final _provider = locator<CreateStoreProvider>();

  CreateStoreModel get _store => _provider.store;

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
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      const CustomProgressBar(percent: 0.4),
                      const SizedBox(height: padding24),
                      Text(
                        '기본 정보',
                        style: Theme.of(context).textTheme.titleLarge!.copyWith(
                              color: customColorScheme.onSurface1,
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                      const SizedBox(height: padding10),
                      Text(
                        '기본 정보를 입력해주세요.',
                        style: Theme.of(context).textTheme.labelLarge!.copyWith(
                              color: customColorScheme.onSurface3,
                            ),
                      ),
                      const SizedBox(height: padding48),

                      // 매장 상호명
                      CustomTextFieldSet(
                        inputLabel: '매장 상호명',
                        initText: _store.name,
                        keyboardType: TextInputType.text,
                        isPassword: false,
                        inputHintText: '매장 상호명 입력',
                        onTextFieldChanged: (value) {
                          _provider.setStore(_store.copyWith(name: value));
                        },
                      ),
                      const SizedBox(height: padding24),

                      // 매장 주소
                      Consumer<CreateStoreProvider>(builder: (_, __, ___) {
                        return ShopProcessEssentialAddressForm(
                          initAddress: _store.address,
                          initAddressDetail: _store.addressDetail,
                          onSearchTap: () async {
                            Kpostal result = await Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (_) => KpostalView(),
                              ),
                            );
                            _provider.setStore(
                              _store.copyWith(
                                address: result.address,
                              ),
                              notify: true,
                            );
                          },
                          onAddressFieldChanged: (value) {
                            _provider.setStore(
                              _store.copyWith(address: value),
                            );
                          },
                          onAddressDetailFieldChanged: (value) {
                            _provider.setStore(
                              _store.copyWith(addressDetail: value),
                            );
                          },
                        );
                      }),
                      const SizedBox(height: padding24),
                    ],
                  ),
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
        boxShadow: [toolbarShadow],
      ),
      child: Row(
        children: [
          Expanded(
            child: OutlinedButton(
              child: const Text('이전'),
              onPressed: () => Navigator.of(context).pop(),
            ),
          ),
          const SizedBox(width: padding16),
          Expanded(
            child: FilledButton(
              onPressed: () {
                if (_provider.validateEssential()) {
                  context.push(CustomRouter.shopProcessImageUpload.path);
                } else {
                  showInformationDialog(
                    context: context,
                    content: '모든 정보를 입력해 주세요.',
                    onConfirm: () {},
                  );
                }
              },
              child: const Text('다음'),
            ),
          ),
        ],
      ),
    );
  }
}
