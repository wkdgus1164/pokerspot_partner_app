import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pokerspot_partner_app/common/routes/base/member.dart';
import 'package:pokerspot_partner_app/common/theme/color.dart';
import 'package:pokerspot_partner_app/presentation/widgets/checkbox/checkbox.dart';

class AgreementItem extends StatelessWidget {
  const AgreementItem({
    super.key,
    this.onCheckedChanged,
    this.isChecked = false,
    required this.agreementTitle,
    this.agreementDescription = '',
  });

  final String agreementTitle;
  final String agreementDescription;
  final Function()? onCheckedChanged;
  final bool isChecked;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CustomCheckbox(onChanged: onCheckedChanged, value: isChecked),
        const SizedBox(width: 10),
        Expanded(
          child: Text(
            agreementTitle,
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  color: isChecked
                      ? lightColorScheme.primary
                      : customColorScheme.onSurface3,
                ),
          ),
        ),
        IconButton(
          onPressed: () => context.pushNamed(MemberRoutes.privacyPolicy.path),
          icon: Icon(
            Icons.keyboard_arrow_right_rounded,
            color: customColorScheme.onSurface4,
          ),
        ),
      ],
    );
  }
}
