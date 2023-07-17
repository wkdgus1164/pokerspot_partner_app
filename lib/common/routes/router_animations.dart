import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

CustomTransitionPage animateHorizontal(
  BuildContext context,
  GoRouterState state,
  Widget page,
) {
  return CustomTransitionPage(
    child: page,
    transitionsBuilder: (_, animation, __, child) {
      return SlideTransition(
        position: animation.drive(
          Tween(
            begin: const Offset(1, 0),
            end: Offset.zero,
          ).chain(
            CurveTween(curve: Curves.easeInOut),
          ),
        ),
        child: child,
      );
    },
  );
}

CustomTransitionPage animateVertical(
  BuildContext context,
  GoRouterState state,
  Widget page,
) {
  return CustomTransitionPage(
    child: page,
    transitionsBuilder: (_, animation, __, child) {
      return SlideTransition(
        position: animation.drive(
          Tween(
            begin: const Offset(0, 1),
            end: Offset.zero,
          ).chain(
            CurveTween(curve: Curves.easeInOut),
          ),
        ),
        child: child,
      );
    },
  );
}
