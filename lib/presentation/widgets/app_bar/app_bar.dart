import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pokerspot_partner_app/common/constants/assets.dart';
import 'package:pokerspot_partner_app/common/theme/color.dart';

enum CustomAppBarTheme {
  light('light'),
  dark('dark');

  const CustomAppBarTheme(this.key);

  final String key;
}

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key,
    this.theme = CustomAppBarTheme.light,
    this.left,
    this.isCenterLogo = false,
    this.text = '',
    this.actions,
    this.bottomDivider = true,
  });

  final CustomAppBarTheme theme;
  final IconData? left;
  final bool isCenterLogo;
  final String text;
  final List<Widget>? actions;
  final bool bottomDivider;

  @override
  Widget build(BuildContext context) {
    bool isLeftIconVisible = left != null;

    Color setBackgroundColor() {
      switch (theme) {
        case CustomAppBarTheme.light:
          return customColorScheme.surfaceWhite;
        case CustomAppBarTheme.dark:
          return customColorScheme.surfaceContainer1;
        default:
          return customColorScheme.surfaceContainer1;
      }
    }

    Widget setTitle() {
      switch (isCenterLogo) {
        case true:
          return SvgPicture.asset(Assets.poker.path);

        case false:
          return Text(
            text,
            style: Theme.of(context).textTheme.titleLarge!.copyWith(
                  color: theme == CustomAppBarTheme.dark
                      ? Colors.white
                      : Colors.black,
                ),
          );
      }

      return const SizedBox();
    }

    return AppBar(
      centerTitle: true,
      automaticallyImplyLeading: isLeftIconVisible,
      surfaceTintColor: setBackgroundColor(),
      backgroundColor: setBackgroundColor(),
      leading: left != null
          ? IconButton(
              onPressed: () => Navigator.pop(context),
              icon: Icon(
                left,
                color: theme == CustomAppBarTheme.light
                    ? customColorScheme.onSurface1
                    : customColorScheme.onSurfaceContainer1,
              ),
            )
          : null,
      title: setTitle(),
      elevation: 0,
      actions: actions,
      bottom: bottomDivider
          ? const PreferredSize(
              preferredSize: Size.fromHeight(1),
              child: Divider(height: 1, thickness: 1),
            )
          : null,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(60);
}
