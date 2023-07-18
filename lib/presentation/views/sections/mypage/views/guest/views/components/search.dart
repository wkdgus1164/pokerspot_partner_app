import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pokerspot_partner_app/common/constants/assets.dart';
import 'package:pokerspot_partner_app/common/theme/color.dart';

class GuestSearchBar extends StatelessWidget {
  const GuestSearchBar({super.key, required this.onChanged});

  final Function(String?) onChanged;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Divider(height: 1, thickness: 1, color: lightColorScheme.outline),
        Row(
          children: [
            Container(
              margin: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 24,
              ),
              child: SvgPicture.asset(Assets.search.path),
            ),
            Expanded(
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: '손님 검색',
                  hintStyle: Theme.of(context).textTheme.labelLarge!.copyWith(
                        color: customColorScheme.onSurface4,
                      ),
                ),
                style: Theme.of(context).textTheme.labelLarge!.copyWith(
                      color: customColorScheme.onSurface1,
                    ),
                onChanged: onChanged,
              ),
            ),
          ],
        ),
        Divider(height: 1, thickness: 1, color: lightColorScheme.outline),
      ],
    );
  }
}
