import 'package:flutter/material.dart';
import 'package:pokerspot_partner_app/common/theme/color.dart';
import 'package:pokerspot_partner_app/presentation/widgets/checkbox/checkbox.dart';

class AgreementAutoCheck extends StatelessWidget {
  const AgreementAutoCheck({
    super.key,
    this.onCheckboxChanged,
    this.isChecked = false,
  });

  final Function()? onCheckboxChanged;
  final bool isChecked;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomCheckbox(onChanged: onCheckboxChanged, value: isChecked),
        const SizedBox(width: 16),
        Expanded(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              GestureDetector(
                onTap: onCheckboxChanged,
                child: Text(
                  '필수 약관 모두 동의',
                  style: Theme.of(context).textTheme.titleMedium!.copyWith(
                        color: isChecked
                            ? lightColorScheme.primary
                            : customColorScheme.onSurface3,
                        fontWeight: FontWeight.bold,
                      ),
                ),
              ),
              const SizedBox(height: 6),
              Text(
                '서비스 이용을 위해 필수 약관에 모두 동의합니다.',
                style: Theme.of(context).textTheme.labelMedium!.copyWith(
                      color: customColorScheme.onSurface3,
                    ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
