import 'package:flutter/material.dart';
import 'package:pokerspot_partner_app/presentation/widgets/text_field/text_field.dart';
import 'package:pokerspot_partner_app/common/constants/sizes.dart';
import 'package:pokerspot_partner_app/common/theme/color.dart';
import 'package:pokerspot_partner_app/common/theme/typography.dart';

class ShopProcessEssentialAddressForm extends StatelessWidget {
  const ShopProcessEssentialAddressForm({super.key});

  @override
  Widget build(BuildContext context) {
    InputDecoration textFieldDecoration() {
      return InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(width: 1, color: Colors.grey.shade300),
          borderRadius: BorderRadius.circular(4),
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide(width: 1, color: Colors.grey.shade300),
          borderRadius: BorderRadius.circular(4),
        ),
        hintText: '주소 입력',
        hintStyle: bodyMedium.copyWith(color: Colors.grey.shade400),
        suffixIcon: Container(
          width: 80,
          alignment: Alignment.center,
          margin: const EdgeInsets.only(top: 6, bottom: 6, right: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            border: Border.all(color: Colors.grey.shade300),
          ),
          child: Text(
            '주소찾기',
            style: caption.copyWith(color: textColor),
          ),
        ),
      );
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          '매장 주소 입력',
          style: label.copyWith(
            color: greyVariant6,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(height: padding10),
        TextFormField(
          decoration: textFieldDecoration(),
          keyboardType: TextInputType.text,
          minLines: 1,
          maxLines: 1,
          onEditingComplete: () {},
          onChanged: (_) {},
          obscureText: false,
        ),
        const SizedBox(height: padding10),
        const CustomTextField(hint: '상세주소 입력'),
        const SizedBox(height: padding10),
        Padding(
          padding: const EdgeInsets.only(left: 12),
          child: Text(
            '* 사업자 등록증에 기재된 주소를 입력해주세요.',
            style: caption.copyWith(color: greyVariant1),
          ),
        ),
      ],
    );
  }
}
