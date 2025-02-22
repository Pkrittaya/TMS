import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:tms/src/pages/login/login_page.dart';
import 'package:tms/src/pages/menu/main_menu_page.dart';
import 'package:tms/src/pages/myjob/delivery_note/delivery_note_page.dart';
import 'package:tms/src/pages/myjob/drop/drop_page.dart';
import 'package:tms/src/pages/myjob/drop_detail/drop_detail_page.dart';
import 'package:tms/src/pages/myjob/save_job/pickup_page.dart';
import 'package:tms/src/pages/myjob/save_job/send_cutomer_page.dart';

GoRouter appRouter = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const LoginPage();
      },
      routes: <RouteBase>[
        GoRoute(
          path: 'login',
          builder: (BuildContext context, GoRouterState state) {
            return const LoginPage();
          },
        ),
        GoRoute(
          path: 'home',
          builder: (BuildContext context, GoRouterState state) {
            return const MainMenuPage();
          },
        ),
        GoRoute(
          path: 'myjobDrop',
          builder: (BuildContext context, GoRouterState state) {
            return const DropPage();
          },
        ),
        GoRoute(
          path: 'myjobDropDetail',
          builder: (BuildContext context, GoRouterState state) {
            final drop = state.uri.queryParameters['drop'] ?? "";
            return DropDetailPage(
              drop: drop,
            );
          },
        ),
        GoRoute(
          path: 'myjobDeliveryNote',
          builder: (BuildContext context, GoRouterState state) {
            return const DeliveryNotePage();
          },
        ),
        GoRoute(
          path: 'pickup',
          builder: (BuildContext context, GoRouterState state) {
            final drop = state.uri.queryParameters['drop'] ?? "";
            return PickupPage(drop: drop);
          },
        ),
        GoRoute(
          path: 'sendCustomer',
          builder: (BuildContext context, GoRouterState state) {
            final drop = state.uri.queryParameters['drop'] ?? "";
            return SendCutomerPage(drop: drop);
          },
        ),
      ],
    ),
  ],
);
