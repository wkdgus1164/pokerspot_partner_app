import 'dart:io';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:image_picker/image_picker.dart';
import 'package:pokerspot_partner_app/common/constants/sizes.dart';
import 'package:pokerspot_partner_app/common/routes/base/shop.dart';
import 'package:pokerspot_partner_app/common/theme/color.dart';
import 'package:pokerspot_partner_app/presentation/dialog/toast.dart';
import 'package:pokerspot_partner_app/presentation/views/shop/new/process/components/steps.dart';
import 'package:pokerspot_partner_app/presentation/views/shop/new/process/image_upload/components/image_item.dart';
import 'package:pokerspot_partner_app/presentation/widgets/app_bar/app_bar.dart';
import 'package:pokerspot_partner_app/presentation/widgets/button/custom_button.dart';
import 'package:provider/provider.dart';

import '../../../../../../../locator.dart';
import '../../../../../../providers/create_store_provider.dart';

class ShopProcessImageUploadView extends StatefulWidget {
  const ShopProcessImageUploadView({super.key});

  @override
  State<ShopProcessImageUploadView> createState() =>
      _ShopProcessImageUploadViewState();
}

class _ShopProcessImageUploadViewState
    extends State<ShopProcessImageUploadView> {
  final _provider = locator<CreateStoreProvider>();

  String _imageUrl(int index) => _provider.images[index]?.url ?? '';

  Future<void> _setImageUrl(int index) async {
    final ImagePicker picker = ImagePicker();
    final XFile? image = await picker.pickImage(source: ImageSource.gallery);

    if (image != null) {
      final binaryData = File(image.path).readAsBytesSync();
      final url = await _provider.getImageUrl(binaryData);
      if (url == null) {
        if (mounted) {
          showToast(context: context, message: '이미지 업로드 실패했습니다.');
        }
      } else {
        _provider.setImage(index, url);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        theme: CustomAppBarTheme.white,
        left: CustomAppBarLeft.cancel,
        center: CustomAppBarCenter.text,
        text: '신규 매장 등록',
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Container(
                  padding: const EdgeInsets.all(padding16),
                  color: lightColorScheme.background,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      const ShopProcessSteps(index: 3),
                      const SizedBox(height: padding16),
                      Text(
                        '매장 사진',
                        style: Theme.of(context).textTheme.headlineSmall,
                      ),
                      const SizedBox(height: padding10),
                      Text(
                        '2장~5장의 매장 사진을 등록해주세요.',
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                      const SizedBox(height: padding48),
                      Consumer<CreateStoreProvider>(builder: (_, __, ___) {
                        return Wrap(
                          spacing: padding24,
                          runSpacing: padding24,
                          direction: Axis.horizontal,
                          children: [
                            ShopProcessImageItem(
                              caption: '대표사진',
                              imageUrl: _imageUrl(0),
                              isPrimary: true,
                              onPressed: () {
                                _setImageUrl(0);
                              },
                            ),
                            ShopProcessImageItem(
                              caption: '필수 1',
                              imageUrl: _imageUrl(1),
                              onPressed: () {
                                _setImageUrl(1);
                              },
                            ),
                            ShopProcessImageItem(
                              caption: '선택 1',
                              imageUrl: _imageUrl(2),
                              onPressed: () {
                                _setImageUrl(2);
                              },
                            ),
                            ShopProcessImageItem(
                              caption: '선택 2',
                              imageUrl: _imageUrl(3),
                              onPressed: () {
                                _setImageUrl(3);
                              },
                            ),
                            ShopProcessImageItem(
                              caption: '선택 3',
                              imageUrl: _imageUrl(4),
                              onPressed: () {
                                _setImageUrl(4);
                              },
                            ),
                          ],
                        );
                      }),
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
            child: CustomFilledButton(
              text: '이전',
              theme: CustomFilledButtonTheme.secondary,
              onPressed: () => Navigator.of(context).pop(),
            ),
          ),
          const SizedBox(width: padding16),
          Expanded(
            child: CustomFilledButton(
              text: '다음',
              theme: CustomFilledButtonTheme.primary,
              onPressed: () {
                if (_provider.validateImages()) {
                  context.pushNamed(
                    ShopRoutes.processOperation.path,
                  );
                } else {
                  showToast(context: context, message: '필수 이미지를 업로드 해주세요.');
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
