import 'package:flutter/material.dart';
import 'package:pokerspot_partner_app/apps/global/global.dart';

class PCheckBoxListTile extends StatelessWidget {
  const PCheckBoxListTile({
    super.key,
    this.value = false,
    this.label = '',
    this.onChanged,
  });

  final bool value;
  final String label;
  final Function(bool?)? onChanged;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Ink(
        child: Row(
          children: [
            Container(
              padding: const EdgeInsets.all(8),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(4),
                ),
              ),
              child: Icon(
                Icons.check_rounded,
                color: value ? colorBrand40 : colorGrey80,
              ),
            ),
            const SizedBox(width: 10),
            Expanded(
              child: Text(
                label,
                style: textTheme.bodyLarge!.copyWith(
                  color: value ? colorBrand40 : colorGrey60,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
