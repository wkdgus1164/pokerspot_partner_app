import 'package:flutter/material.dart';
import 'package:pokerspot_partner_app/common/theme/color.dart';
import 'package:pokerspot_partner_app/common/theme/typography.dart';

class ShopProcessSteps extends StatelessWidget {
  const ShopProcessSteps({super.key, required this.index});

  final int index;

  @override
  Widget build(BuildContext context) {
    const indexList = [1, 2, 3, 4, 5];

    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: indexList
          .map((e) => Container(
                width: 20,
                height: 20,
                margin: const EdgeInsets.only(left: 8),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: index == e
                      ? primaryColor
                      : const Color.fromRGBO(198, 200, 205, 1),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text(
                  '$e',
                  style: caption.copyWith(color: Colors.white),
                  textAlign: TextAlign.center,
                ),
              ))
          .toList(),
    );
  }
}
