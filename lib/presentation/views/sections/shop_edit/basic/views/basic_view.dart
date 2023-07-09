import 'package:flutter/material.dart';
import 'package:pokerspot_partner_app/common/constants/sizes.dart';
import 'package:pokerspot_partner_app/common/theme/color.dart';
import 'package:pokerspot_partner_app/presentation/views/sections/shop_edit/basic/views/components/add_item.dart';
import 'package:pokerspot_partner_app/presentation/views/sections/shop_edit/basic/views/components/image_item.dart';
import 'package:pokerspot_partner_app/presentation/widgets/divider/divider.dart';
import 'package:pokerspot_partner_app/presentation/widgets/info_box/info_box.dart';
import 'package:pokerspot_partner_app/presentation/widgets/text_field/text_field_set.dart';

class ShopEditBasicView extends StatelessWidget {
  const ShopEditBasicView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(padding16),
          child: CustomTextFieldSet(
            inputLabel: '매장 상호명',
            inputHintText: '매장 상호명',
            onTextFieldChanged: (v) {},
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
              ShopEditImageItem(
                imageUrl: "https://via.placeholder.com/160x160",
                isMain: true,
                onEditButtonPressed: () {},
                onDeleteButtonPressed: () {},
              ),
              ShopEditImageItem(
                imageUrl: "https://via.placeholder.com/160x160",
                isMain: false,
                onEditButtonPressed: () {},
                onDeleteButtonPressed: () {},
              ),
              ShopEditImageItem(
                imageUrl: "https://via.placeholder.com/160x160",
                isMain: false,
                onEditButtonPressed: () {},
                onDeleteButtonPressed: () {},
              ),
              ShopEditImageAddItem(onPressed: () {}),
            ],
          ),
        ),
      ],
    );
  }
}
