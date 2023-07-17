import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pokerspot_partner_app/common/constants/sizes.dart';
import 'package:pokerspot_partner_app/common/routes/routes.dart';
import 'package:pokerspot_partner_app/common/theme/color.dart';

class HomeStoreHeader extends StatelessWidget {
  const HomeStoreHeader({Key? key, required this.name}) : super(key: key);

  final String name;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.push(CustomRouter.shopSelect.path),
      child: Container(
        color: customColorScheme.surfaceContainer2,
        padding: const EdgeInsets.symmetric(vertical: padding16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  name,
                  style: Theme.of(context).textTheme.titleMedium!.copyWith(
                        color: Colors.white,
                      ),
                ),
                const SizedBox(width: 4),
                const Icon(
                  Icons.keyboard_arrow_down_rounded,
                  color: Colors.white,
                ),
              ],
            ),
            Container(
              width: 8,
              height: 8,
              decoration: const BoxDecoration(
                color: Color.fromRGBO(19, 181, 172, 1),
                borderRadius: BorderRadius.all(
                  Radius.circular(8),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
