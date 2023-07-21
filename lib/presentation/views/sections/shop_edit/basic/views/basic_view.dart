import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';
import 'package:pokerspot_partner_app/common/constants/sizes.dart';
import 'package:pokerspot_partner_app/common/theme/color.dart';
import 'package:pokerspot_partner_app/presentation/providers/store_provider.dart';
import 'package:pokerspot_partner_app/presentation/views/sections/shop_edit/basic/views/components/add_item.dart';
import 'package:pokerspot_partner_app/presentation/views/sections/shop_edit/basic/views/components/image_item.dart';
import 'package:pokerspot_partner_app/presentation/widgets/divider/divider.dart';
import 'package:pokerspot_partner_app/presentation/widgets/info_box/info_box.dart';
import 'package:pokerspot_partner_app/presentation/widgets/text_field/text_field_set.dart';
import 'package:provider/provider.dart';

import '../../../../../dialog/toast.dart';

class ShopEditBasicView extends StatefulWidget {
  const ShopEditBasicView({super.key});

  @override
  State<ShopEditBasicView> createState() => _ShopEditBasicViewState();
}

class _ShopEditBasicViewState extends State<ShopEditBasicView> {
  Future<void> _setImageUrl(StoreProvider provider, int index) async {
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
        final success =
            await provider.getImageUrl(index: index, binaryData: binaryData);
        if (!success && mounted) {
          showToast(context: context, message: '이미지 업로드 실패했습니다.');
        }
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<StoreProvider>(builder: (_, provider, ___) {
      final store = provider.store!;
      return SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(padding16),
              child: CustomTextFieldSet(
                initText: store.name,
                inputLabel: '매장 상호명',
                inputHintText: '매장 상호명',
                onTextFieldChanged: (v) {
                  provider.setStore(store);
                },
                captionText: '4~16자 사이의 텍스트를 입력해 주세요.\n특수문자는 입력할 수 없습니다.',
                maxLength: 16,
                maxLines: 1,
              ),
            ),
            const CustomDivider(),
            Padding(
              padding: const EdgeInsets.all(padding16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    '매장 사진',
                    style: Theme.of(context).textTheme.titleMedium!.copyWith(
                          color: customColorScheme.onSurface1,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  const SizedBox(height: 16),
                  const InfoBox(text: '2장 ~ 5장의 매장 사진을 등록해 주세요.'),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Wrap(
                direction: Axis.horizontal,
                children: [
                  ...store.storeImages
                      .mapIndexed((index, e) => ShopEditImageItem(
                            imageUrl: e.url,
                            isMain: index == 0,
                            onEditButtonPressed: () {
                              _setImageUrl(provider, index);
                            },
                            onDeleteButtonPressed: () {
                              if (store.storeImages.length > 2) {
                                store.storeImages.removeAt(index);
                                provider.setStore(store);
                              }
                            },
                          )),
                  ShopEditImageAddItem(onPressed: () {
                    _setImageUrl(provider, store.storeImages.length);
                  })
                ],
              ),
            ),
            const SizedBox(height: 16),
          ],
        ),
      );
    });
  }
}
