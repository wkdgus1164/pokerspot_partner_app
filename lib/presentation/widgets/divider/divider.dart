import 'package:flutter/cupertino.dart';
import 'package:pokerspot_partner_app/common/theme/color.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 10,
      decoration: BoxDecoration(
        color: greyVariant5,
        border: Border(top: BorderSide(width: 1, color: greyVariant4)),
      ),
    );
  }
}
