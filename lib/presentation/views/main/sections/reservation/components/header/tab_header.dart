import 'package:flutter/material.dart';
import 'package:pokerspot_partner_app/common/theme/color.dart';

PreferredSizeWidget reservationTabAppBar(BuildContext context, String? title) =>
    AppBar(
      centerTitle: true,
      automaticallyImplyLeading: false,
      surfaceTintColor: Colors.white,
      backgroundColor: const Color.fromRGBO(42, 50, 59, 1),
      elevation: 0,
      title: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(title ?? '예약관리',
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium!
                  .copyWith(color: Colors.white)),
          if (title != null)
            Icon(
              Icons.keyboard_arrow_down_rounded,
              color: lightColorScheme.onSurfaceVariant,
            ),
        ],
      ),
      /*
      TODO MVP 이후
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: padding16),
          child: Ink(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: const Color.fromRGBO(58, 69, 82, 1),
            ),

            child: InkWell(
              onTap: () {},
              splashColor: Colors.blueGrey.shade900.withOpacity(0.6),
              borderRadius: BorderRadius.circular(30),
              child: Container(
                alignment: Alignment.center,
                height: 36,
                width: 80,
                child:
                    const Text('예약중지', style: TextStyle(color: Colors.white)),
              ),
            ),
          ),
        ),
      ],
       */
    );
