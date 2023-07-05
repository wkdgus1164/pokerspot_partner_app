import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pokerspot_partner_app/common/routes/base/shop.dart';
import 'package:pokerspot_partner_app/common/theme/color.dart';

PreferredSizeWidget reservationTabAppBar(BuildContext context, String? title) {
  return AppBar(
    centerTitle: true,
    automaticallyImplyLeading: false,
    surfaceTintColor: Colors.white,
    backgroundColor: const Color.fromRGBO(42, 50, 59, 1),
    elevation: 0,
    title: GestureDetector(
      onTap: () {
        if (title != null) {
          context.pushNamed(ShopRoutes.select.path);
        }
      },
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            title ?? '예약관리',
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  color: Colors.white,
                  fontWeight:
                      title != null ? FontWeight.bold : FontWeight.normal,
                ),
          ),
          if (title != null)
            Icon(
              Icons.keyboard_arrow_down_rounded,
              color: Colors.white.withOpacity(0.5),
            ),
        ],
      ),
    ),
    actions: [
      Container(
        height: 30,
        margin: const EdgeInsets.only(right: 16),
        child: FilledButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(
              customColorScheme.surfaceContainer2,
            ),
            padding: MaterialStateProperty.all(EdgeInsets.zero),
            shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),
          onPressed: () {},
          child: Text(
            '예약마감',
            style: Theme.of(context).textTheme.labelMedium!.copyWith(
                  color: customColorScheme.onSurfaceContainer1,
                ),
          ),
        ),
      ),
    ],
  );
}
