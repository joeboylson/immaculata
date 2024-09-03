import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:immaculata_app/router/routes/index.dart';

final routes = [
  tableOfContentsRoute,
  prayerViewRoute,
];

Future<String?> redirect(BuildContext context, GoRouterState state) async {
  final currentRoute = state.uri.path;
  if (currentRoute == "/") return tableOfContentsRoute.path;
  return null;
}

final GoRouter router = GoRouter(
  initialLocation: '/',
  debugLogDiagnostics: true,
  routes: routes,
  redirect: redirect,
);
