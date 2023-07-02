import 'package:flutter/cupertino.dart';
import 'package:pokerspot_partner_app/common/theme/color.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          height: 1,
          color: lightColorScheme.outline,
        ),
        Container(
          width: double.infinity,
          height: 8,
          color: lightColorScheme.surfaceVariant,
        ),
      ],
    );
  }
}
