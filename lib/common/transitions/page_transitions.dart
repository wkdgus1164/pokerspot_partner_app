import 'package:flutter/cupertino.dart';

Widget transitionsBuilder(context, animation, secondaryAnimation, child) {
  return SlideTransition(
    position: animation.drive(
      Tween<Offset>(
        begin: const Offset(1, 0),
        end: Offset.zero,
      ).chain(CurveTween(curve: Curves.easeIn)),
    ),
    child: child,
  );
}
