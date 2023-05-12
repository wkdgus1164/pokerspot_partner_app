import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pokerspot_partner_app/common/constants/assets.dart';
import 'package:pokerspot_partner_app/common/theme/typography.dart';

enum CustomAppBarTheme {
  white('white'),
  black('black');

  const CustomAppBarTheme(this.key);

  final String key;
}

enum CustomAppBarLeftSide {
  none('none'),
  backButton('back_button'),
  cancelButton('cancel_button');

  const CustomAppBarLeftSide(this.key);

  final String key;
}

enum CustomAppBarCenter {
  logo('logo'),
  text('text');

  const CustomAppBarCenter(this.key);

  final String key;
}

enum CustomAppBarRightSide {
  none('none'),
  noti('noti'),
  button('button');

  const CustomAppBarRightSide(this.key);

  final String key;
}

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key,
    this.customAppBarTheme = CustomAppBarTheme.white,
    this.customAppBarLeftSide = CustomAppBarLeftSide.none,
    this.customAppBarCenter = CustomAppBarCenter.logo,
    this.customAppBarRightSide = CustomAppBarRightSide.none,
    this.text = '',
    this.actions,
  });

  final CustomAppBarTheme customAppBarTheme;
  final CustomAppBarLeftSide customAppBarLeftSide;
  final CustomAppBarCenter customAppBarCenter;
  final CustomAppBarRightSide customAppBarRightSide;
  final String text;
  final List<Widget>? actions;

  @override
  Widget build(BuildContext context) {
    final isLeftSideVisible =
        customAppBarLeftSide == CustomAppBarLeftSide.backButton ||
            customAppBarLeftSide == CustomAppBarLeftSide.cancelButton;

    final surfaceTintColor = customAppBarTheme == CustomAppBarTheme.white
        ? Colors.white
        : const Color.fromARGB(255, 42, 50, 59);

    final title = customAppBarCenter == CustomAppBarCenter.text
        ? Text(
            text,
            style: bodySmall.copyWith(fontWeight: FontWeight.w700),
            textAlign: TextAlign.center,
          )
        : null;

    return AppBar(
      centerTitle: true,
      automaticallyImplyLeading: isLeftSideVisible,
      surfaceTintColor: surfaceTintColor,
      backgroundColor: surfaceTintColor,
      leading: leadingIcon(),
      title: title,
      elevation: 0,
      actions: actions,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(60);

  Widget? leadingIcon() {
    if (customAppBarLeftSide != CustomAppBarLeftSide.none) return null;

    if (customAppBarLeftSide == CustomAppBarLeftSide.backButton) {
      if (customAppBarTheme == CustomAppBarTheme.white) {
        return SvgPicture.asset(Assets.arrowBackDark.path);
      } else {
        return SvgPicture.asset(Assets.arrowBackLight.path);
      }
    }

    if (customAppBarLeftSide == CustomAppBarLeftSide.cancelButton) {
      if (customAppBarTheme == CustomAppBarTheme.white) {
        return const Icon(Icons.close, color: Colors.black);
      } else {
        return SvgPicture.asset(Assets.arrowBackLight.path);
      }

      if (customAppBarTheme == CustomAppBarTheme.black) {
        return const Icon(Icons.close, color: Colors.white);
      } else {
        return SvgPicture.asset(Assets.arrowBackDark.path);
      }
    }
  }
}
