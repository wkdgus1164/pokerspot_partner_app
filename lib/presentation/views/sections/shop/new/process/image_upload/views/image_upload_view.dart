import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';
import 'package:pokerspot_partner_app/common/constants/sizes.dart';
import 'package:pokerspot_partner_app/common/routes/routes.dart';
import 'package:pokerspot_partner_app/common/theme/color.dart';
import 'package:pokerspot_partner_app/presentation/dialog/toast.dart';
import 'package:pokerspot_partner_app/presentation/effects/card_shadow.dart';
import 'package:pokerspot_partner_app/presentation/views/sections/shop/new/process/components/progress_bar.dart';
import 'package:pokerspot_partner_app/presentation/views/sections/shop/new/process/image_upload/components/image_item.dart';
import 'package:provider/provider.dart';

import '../../../../../../../../locator.dart';
import '../../../../../../../providers/create_store_provider.dart';

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
    final ImageCropper cropper = ImageCropper();

    final XFile? image = await picker.pickImage(source: ImageSource.gallery);
    if (image != null) {
      final CroppedFile? croppedImage = await cropper.cropImage(
          sourcePath: image.path,
          aspectRatio: const CropAspectRatio(ratioX: 1, ratioY: 1),
          compressFormat: ImageCompressFormat.jpg,
          uiSettings: [
            AndroidUiSettings(
              toolbarColor: Colors.black,
              toolbarWidgetColor: Colors.white,
              toolbarTitle: '',
              showCropGrid: false,
              hideBottomControls: true,
            ),
            IOSUiSettings(
              title: '',
              hidesNavigationBar: true,
              showActivitySheetOnDone: false,
              showCancelConfirmationDialog: false,
              rotateButtonsHidden: true,
              resetButtonHidden: true,
              aspectRatioPickerButtonHidden: true,
              resetAspectRatioEnabled: false,
              aspectRatioLockEnabled: true,
              rectX: 1,
              rectY: 1,
              doneButtonTitle: '✔️',
              cancelButtonTitle: '✖️',
            )
          ]);

      if (croppedImage != null) {
        final binaryData = await croppedImage.readAsBytes();
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
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      const CustomProgressBar(percent: 0.6),
                      const SizedBox(height: padding24),
                      Text(
                        '매장 사진',
                        style: Theme.of(context).textTheme.titleLarge!.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                      const SizedBox(height: padding10),
                      Text(
                        '2장~5장의 매장 사진을 등록해주세요.',
                        style: Theme.of(context).textTheme.labelLarge!.copyWith(
                              color: customColorScheme.onSurface3,
                            ),
                      ),
                      const SizedBox(height: padding48),
                      Consumer<CreateStoreProvider>(
                        builder: (_, __, ___) {
                          return Wrap(
                            spacing: padding24,
                            runSpacing: padding24,
                            direction: Axis.horizontal,
                            children: [
                              ShopProcessImageItem(
                                imageUrl: _imageUrl(0),
                                isPrimary: true,
                                onPressed: () => _setImageUrl(0),
                                onEditButtonPressed: () {},
                                onDeleteButtonPressed: () {},
                              ),
                              ShopProcessImageItem(
                                imageUrl: _imageUrl(1),
                                isEssential: true,
                                onPressed: () => _setImageUrl(1),
                                onEditButtonPressed: () {},
                                onDeleteButtonPressed: () {},
                              ),
                              ShopProcessImageItem(
                                imageUrl: _imageUrl(2),
                                onPressed: () => _setImageUrl(2),
                                onEditButtonPressed: () {},
                                onDeleteButtonPressed: () {},
                              ),
                              ShopProcessImageItem(
                                imageUrl: _imageUrl(3),
                                onPressed: () => _setImageUrl(3),
                                onEditButtonPressed: () {},
                                onDeleteButtonPressed: () {},
                              ),
                              ShopProcessImageItem(
                                imageUrl: _imageUrl(4),
                                onPressed: () => _setImageUrl(4),
                                onEditButtonPressed: () {},
                                onDeleteButtonPressed: () {},
                              ),
                            ],
                          );
                        },
                      ),
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
              child: const Text('다음'),
              onPressed: () {
                if (_provider.validateImages()) {
                  context.push(CustomRouter.shopProcessOperation.path);
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
