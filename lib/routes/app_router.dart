import 'package:flutter/material.dart';
import 'package:fullstackfranz_flutter_web/pages/error_page1.dart';
import 'package:fullstackfranz_flutter_web/pages/page1.dart';
import 'package:fullstackfranz_flutter_web/pages/page2.dart';
import 'package:fullstackfranz_flutter_web/pages/page3.dart';
import 'package:go_router/go_router.dart';

final GoRouter router = GoRouter(
  errorPageBuilder: (BuildContext context, GoRouterState state) {
    return MaterialPage(
      child: siteWrapper(const ErrorPage1(), state),
    );
  },
  routes: <RouteBase>[
    GoRoute(
      path: Page1.route,
      builder: (BuildContext context, GoRouterState state) {
        return siteWrapper(const Page1(), state);
      },
    ),
    GoRoute(
        path: Page2.route,
        builder: (BuildContext context, GoRouterState state) {
          return siteWrapper(const Page2(), state);
        },
        routes: [
          GoRoute(
            path: Page3.route,
            builder: (BuildContext context, GoRouterState state) {
              return siteWrapper(const Page3(), state);
            },
          ),
        ]),
  ],
);

Widget siteWrapper(Widget child, GoRouterState state) {
  return Material(
    child: child,
  );
}
