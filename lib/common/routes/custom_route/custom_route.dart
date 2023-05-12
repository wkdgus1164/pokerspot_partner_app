import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';

GoRoute customGoRoute(String routePath, Widget pageView) {
  return GoRoute(
    name: routePath,
    path: routePath,
    pageBuilder: (context, state) {
      return CustomTransitionPage(
        child: pageView,
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
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
    },
  );
}
