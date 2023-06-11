import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pokerspot_partner_app/common/constants/sizes.dart';
import 'package:pokerspot_partner_app/common/theme/color.dart';
import 'package:pokerspot_partner_app/presentation/widgets/button/custom_button.dart';
import 'package:pokerspot_partner_app/presentation/widgets/button/custom_outlined_button.dart';
import 'package:pokerspot_partner_app/presentation/widgets/button/text_button.dart';

class PickerDialog extends StatelessWidget {
  final String title;
  final List<String> selections;
  final VoidCallback onCancel;
  final VoidCallback onSubmit;
  final ValueChanged<int>? onItemChanged;

  const PickerDialog({
    super.key,
    required this.title,
    required this.selections,
    required this.onCancel,
    required this.onSubmit,
    this.onItemChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: lightColorScheme.surface,
      surfaceTintColor: lightColorScheme.surface,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(8),
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(height: padding24),
          Text(
            title,
            style: Theme.of(context).textTheme.titleMedium!.copyWith(
                color: customColorScheme.onSurface1,
                fontWeight: FontWeight.w700),
          ),
          SizedBox(
            width: double.infinity,
            height: 160,
            child: CupertinoPicker(
              itemExtent: 50,
              onSelectedItemChanged: onItemChanged,
              children: selections
                  .map((selection) => Container(
                        height: 50,
                        alignment: Alignment.center,
                        child: Text(
                          selection,
                          style: Theme.of(context)
                              .textTheme
                              .bodyLarge!
                              .copyWith(color: Colors.black),
                        ),
                      ))
                  .toList(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(padding10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Expanded(
                  child: CustomOutlinedButton(
                    onPressed: onCancel,
                    theme: CustomOutlinedButtonTheme.neutral,
                    text: '취소',
                  ),
                ),
                const SizedBox(width: padding10),
                Expanded(
                  child: CustomFilledButton(
                    theme: CustomFilledButtonTheme.primary,
                    onPressed: onSubmit,
                    text: '선택 완료',
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
