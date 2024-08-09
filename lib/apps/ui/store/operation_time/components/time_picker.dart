import 'package:flutter/material.dart';
import 'package:pokerspot_partner_app/apps/global/global.dart';

class TimePickerTextField extends StatelessWidget {
  const TimePickerTextField({
    super.key,
    required this.labelText,
    required this.hintText,
    this.handleClick,
  });

  final String labelText;
  final String hintText;
  final Function()? handleClick;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: handleClick,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(
            Radius.circular(16),
          ),
          border: Border.all(color: colorGrey90),
        ),
        padding: const EdgeInsets.only(
          left: 16,
          right: 16,
          top: 12,
          bottom: 0,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              labelText,
              style: Theme.of(context).textTheme.bodySmall!.copyWith(
                    color: colorGrey20,
                  ),
            ),
            Row(
              children: [
                const Icon(
                  Icons.access_time_rounded,
                  color: colorGrey70,
                  size: 18,
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 11,
                    ),
                    child: Text(
                      hintText,
                      style: const TextStyle(
                        color: colorGrey70,
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
