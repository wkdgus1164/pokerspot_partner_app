import 'package:flutter/material.dart';
import 'package:pokerspot_partner_app/common/theme/color.dart';

import '../../../../../../../widgets/text_field/text_field.dart';

class GameDialogTarget extends StatelessWidget {
  const GameDialogTarget({
    super.key,
    required this.isSelected,
    this.selectedValue = '',
    required this.onTextFieldChanged,
  });

  final bool isSelected;
  final String selectedValue;
  final Function(String) onTextFieldChanged;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: Text(
            '타겟 토너',
            style: Theme.of(context).textTheme.labelMedium!.copyWith(
                  color: customColorScheme.onSurface2,
                ),
          ),
        ),
        Expanded(
          flex: 2,
          child: Container(
            alignment: Alignment.center,
            height: 45,
            child: CustomTextField(
              initText: selectedValue,
              hint: '타겟 토너',
              onTextFieldChanged: onTextFieldChanged,
            ),
          ),
        ),
      ],
    );
  }
}
