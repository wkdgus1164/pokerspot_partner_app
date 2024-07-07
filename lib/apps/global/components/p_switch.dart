import 'package:flutter/cupertino.dart';
import 'package:pokerspot_partner_app/apps/global/global.dart';

class PSwitch extends StatelessWidget {
  const PSwitch({
    super.key,
    required this.labelText,
    this.isOn = false,
    required this.handleChange,
  });

  final String labelText;
  final bool isOn;
  final Function(bool) handleChange;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => handleChange(!isOn),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(
            Radius.circular(16),
          ),
          border: Border.all(color: colorGrey90),
        ),
        padding: const EdgeInsets.all(16),
        child: Row(
          children: [
            Expanded(
              child: Text(
                labelText,
                style: textTheme.bodyLarge!.copyWith(
                  color: colorGrey20,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ),
            const SizedBox(width: 8),
            CupertinoSwitch(
              value: isOn,
              onChanged: handleChange,
              activeColor: colorBrand50,
            ),
          ],
        ),
      ),
    );
  }
}
