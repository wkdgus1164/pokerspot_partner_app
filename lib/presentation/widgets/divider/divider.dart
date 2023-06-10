import 'package:flutter/cupertino.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 10,
      decoration: const BoxDecoration(
        border: Border(
          top: BorderSide(width: 1),
        ),
      ),
    );
  }
}
