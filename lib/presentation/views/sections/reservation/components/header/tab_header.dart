import 'package:flutter/material.dart';
import 'package:pokerspot_partner_app/common/theme/color.dart';

PreferredSizeWidget reservationTabAppBar(BuildContext context, String? title) {
  return AppBar(
    centerTitle: true,
    automaticallyImplyLeading: false,
    surfaceTintColor: Colors.white,
    backgroundColor: const Color.fromRGBO(42, 50, 59, 1),
    elevation: 0,
    title: Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          title ?? '예약관리',
          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                color: Colors.white,
              ),
        ),
        if (title != null)
          Icon(
            Icons.keyboard_arrow_down_rounded,
            color: lightColorScheme.onSurfaceVariant,
          ),
      ],
    ),
  );
}
