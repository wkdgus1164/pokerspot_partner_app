import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pokerspot_partner_app/common/constants/assets.dart';
import 'package:pokerspot_partner_app/common/theme/color.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key,
    this.left = Icons.arrow_back_rounded,
    this.isCenterLogo = false,
    this.text = '',
    this.actions,
    this.bottomDivider = true,
  });

  final IconData? left;
  final bool isCenterLogo;
  final String text;
  final List<Widget>? actions;
  final bool bottomDivider;

  @override
  Widget build(BuildContext context) {
    bool isLeftIconVisible = left != null;

    Widget setTitle() {
      switch (isCenterLogo) {
        case true:
          return SvgPicture.asset(Assets.poker.path);

        case false:
          return Text(
            text,
            style: Theme.of(context).textTheme.titleMedium!.copyWith(
                  color: Colors.white,
                ),
          );
      }

      return const SizedBox();
    }

    return AppBar(
      centerTitle: true,
      automaticallyImplyLeading: isLeftIconVisible,
      surfaceTintColor: customColorScheme.surfaceContainer1,
      backgroundColor: customColorScheme.surfaceContainer1,
      leading: left != null
          ? IconButton(
              onPressed: () => Navigator.pop(context),
              icon: Icon(left, color: Colors.white),
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
