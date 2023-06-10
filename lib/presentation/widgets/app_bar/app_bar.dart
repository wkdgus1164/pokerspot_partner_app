import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pokerspot_partner_app/common/constants/assets.dart';
import 'package:pokerspot_partner_app/common/theme/color.dart';

enum CustomAppBarTheme {
  white('white'),
  black('black');

  const CustomAppBarTheme(this.key);

  final String key;
}

enum CustomAppBarLeft {
  none('none'),
  back('back'),
  cancel('cancel');

  const CustomAppBarLeft(this.key);

  final String key;
}

enum CustomAppBarCenter {
  logo('logo'),
  text('text');

  const CustomAppBarCenter(this.key);

  final String key;
}

enum CustomAppBarRight {
  none('none'),
  noti('noti'),
  button('button');

  const CustomAppBarRight(this.key);

  final String key;
}

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key,
    this.theme = CustomAppBarTheme.white,
    this.left = CustomAppBarLeft.none,
    this.center = CustomAppBarCenter.logo,
    this.right = CustomAppBarRight.none,
    this.text = '',
    this.actions,
    this.bottomDivider = true,
  });

  final CustomAppBarTheme theme;
  final CustomAppBarLeft left;
  final CustomAppBarCenter center;
  final CustomAppBarRight right;
  final String text;
  final List<Widget>? actions;
  final bool bottomDivider;

  @override
  Widget build(BuildContext context) {
    final isLeftSideVisible =
        left == CustomAppBarLeft.back || left == CustomAppBarLeft.cancel;

    final surfaceTintColor = theme == CustomAppBarTheme.white
        ? customColorScheme.surfaceWhite
        : customColorScheme.surfaceContainer1;

    return AppBar(
      centerTitle: true,
      automaticallyImplyLeading: isLeftSideVisible,
      surfaceTintColor: surfaceTintColor,
      backgroundColor: surfaceTintColor,
      leading: leadingIcon(context),
      title: title(context),
      elevation: 0,
      actions: actions,
      bottom: const PreferredSize(
        preferredSize: Size.fromHeight(1),
        child: Divider(height: 1, thickness: 1),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(60);

  Widget title(BuildContext context) {
    switch (center) {
      case CustomAppBarCenter.logo:
        return SvgPicture.asset(Assets.poker.path);

      case CustomAppBarCenter.text:
        if (theme == CustomAppBarTheme.white) {
          return Text(text, style: Theme.of(context).textTheme.bodyMedium);
        } else {
          return Text(
            text,
            style: Theme.of(context)
                .textTheme
                .titleLarge!
                .copyWith(color: Colors.white),
          );
        }
    }
  }

  Widget? leadingIcon(BuildContext context) {
    switch (left) {
      case CustomAppBarLeft.none:
        return null;

      case CustomAppBarLeft.back:
        if (theme == CustomAppBarTheme.white) {
          return IconButton(
            onPressed: () => Navigator.of(context).pop(),
            icon: const Icon(Icons.arrow_back, color: Colors.black),
          );
        } else {
          return IconButton(
            onPressed: () => Navigator.of(context).pop(),
            icon: const Icon(Icons.arrow_back, color: Colors.white),
          );
        }

      case CustomAppBarLeft.cancel:
        if (theme == CustomAppBarTheme.black) {
          return IconButton(
            onPressed: () => Navigator.of(context).pop(),
            icon: const Icon(Icons.close, color: Colors.white),
          );
        } else {
          return IconButton(
            onPressed: () => Navigator.of(context).pop(),
            icon: const Icon(Icons.close, color: Colors.black),
          );
        }
    }
  }
}
