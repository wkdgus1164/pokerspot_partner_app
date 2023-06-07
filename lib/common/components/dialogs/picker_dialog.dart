import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pokerspot_partner_app/common/constants/sizes.dart';
import 'package:pokerspot_partner_app/common/theme/typography.dart';

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
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(8),
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(height: padding24),
          Text(title, style: titleSmall),
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
                          style: bodySmall.copyWith(color: Colors.black),
                        ),
                      ))
                  .toList(),
            ),
          ),
          Row(
            children: [
              Expanded(
                child: OutlinedButton(
                  onPressed: onCancel,
                  child: const Text('취소'),
                ),
              ),
              Expanded(
                child: ElevatedButton(
                  onPressed: onSubmit,
                  child: const Text('선택 완료'),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
