import 'package:flutter/material.dart';
import 'package:pokerspot_partner_app/common/theme/color.dart';

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
                      ? lightColorScheme.primary
                      : customColorScheme.onSurface4,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text(
                  '$e',
                  style: Theme.of(context)
                      .textTheme
                      .labelLarge!
                      .copyWith(color: Colors.white),
                  textAlign: TextAlign.center,
                ),
              ))
          .toList(),
    );
  }
}
