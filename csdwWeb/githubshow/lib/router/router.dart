import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';

import '../page/detail.dart';
import '../page/home_screen.dart';
import '../page/settng_screen.dart';

// GoRouter configuration
final router = GoRouter(
  initialLocation: '/details',
  routes: <RouteBase>[
    ShellRoute(
      builder: (BuildContext context, GoRouterState state, Widget child) {
        return HomeScreen(
          child: child,
        );
      },
      routes: <RouteBase>[
        GoRoute(
            name: 'details',
            path: '/details',
            pageBuilder: (context, state) {
              return CustomTransitionPage(
                  child: DetailsScreen(),
                  transitionsBuilder:
                      (context, animation, secondaryAnimation, child) {
                    return FadeTransition(
                      opacity: CurveTween(curve: Curves.easeInOutCirc)
                          .animate(animation),
                      child: child,
                    );
                  });
            }),

        GoRoute(
            name: 'setting',
            path: '/setting',
            pageBuilder: (context, state) {
              return CustomTransitionPage(
                  child: SettingsScreen(),
                  transitionsBuilder:
                      (context, animation, secondaryAnimation, child) {
                    return FadeTransition(
                      opacity: CurveTween(curve: Curves.easeInOutCirc)
                          .animate(animation),
                      child: child,
                    );
                  });
            }),
      ],
    ),
  ],

  // redirect: (context, state) => '/details',
  // redirect: (context, state; ,
);
