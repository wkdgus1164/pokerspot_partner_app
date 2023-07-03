import 'package:flutter/material.dart';
import 'package:pokerspot_partner_app/common/constants/sizes.dart';
import 'package:pokerspot_partner_app/common/theme/color.dart';
import 'package:pokerspot_partner_app/presentation/widgets/text_field/text_field.dart';

class ShopProcessEssentialAddressForm extends StatelessWidget {
  final String initAddress;
  final String initAddressDetail;
  final VoidCallback onSearchTap;
  final Function(String) onAddressFieldChanged;
  final Function(String) onAddressDetailFieldChanged;

  const ShopProcessEssentialAddressForm({
    super.key,
    this.initAddress = '',
    this.initAddressDetail = '',
    required this.onSearchTap,
    required this.onAddressFieldChanged,
    required this.onAddressDetailFieldChanged,
  });

  @override
  Widget build(BuildContext context) {
    InputDecoration textFieldDecoration() {
      return InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            width: 1,
            color: Colors.grey.shade300,
          ),
          borderRadius: BorderRadius.circular(4),
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide(
            width: 1,
            color: Colors.grey.shade300,
          ),
          borderRadius: BorderRadius.circular(4),
        ),
        hintText: '주소 입력',
        hintStyle: Theme.of(context).textTheme.bodyMedium!.copyWith(
              color: Colors.grey.shade400,
            ),
        suffixIcon: InkWell(
          onTap: onSearchTap,
          child: Container(
            width: 80,
            alignment: Alignment.center,
            margin: const EdgeInsets.only(top: 6, bottom: 6, right: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              border: Border.all(color: Colors.grey.shade300),
            ),
            child: Text(
              '주소찾기',
              style: Theme.of(context).textTheme.labelLarge,
            ),
          ),
        ),
      );
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          '매장 주소 입력',
          style: Theme.of(context)
              .textTheme
              .labelLarge!
              .copyWith(fontWeight: FontWeight.w500),
        ),
        const SizedBox(height: padding10),
        Text(
          '사업자 등록증에 기재된 주소를 입력해주세요.',
          style: Theme.of(context).textTheme.labelMedium!.copyWith(
                color: customColorScheme.onSurface3,
              ),
        ),
        const SizedBox(height: padding10),
        TextFormField(
          controller: (initAddress.isNotEmpty
              ? (TextEditingController()
                ..text = initAddress
                ..selection = TextSelection.collapsed(
                  offset: initAddress.length,
                ))
              : null),
          decoration: textFieldDecoration(),
          keyboardType: TextInputType.text,
          minLines: 1,
          maxLines: 1,
          onEditingComplete: () {},
          onChanged: onAddressFieldChanged,
          obscureText: false,
        ),
        const SizedBox(height: padding10),
        CustomTextField(
          hint: '상세주소 입력',
          initText: initAddressDetail,
          onTextFieldChanged: onAddressDetailFieldChanged,
        ),
      ],
    );
  }
}