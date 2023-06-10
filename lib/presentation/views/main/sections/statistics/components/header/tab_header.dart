import 'package:flutter/material.dart';

PreferredSizeWidget statisticsTabAppBar(BuildContext context, String? title) =>
    AppBar(
      centerTitle: true,
      automaticallyImplyLeading: false,
      surfaceTintColor: Colors.white,
      backgroundColor: const Color.fromRGBO(42, 50, 59, 1),
      elevation: 0,
      title: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(title ?? '통계',
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium!
                  .copyWith(color: Colors.white)),
          if (title != null) const Icon(Icons.keyboard_arrow_down_rounded),
        ],
      ),
    );
