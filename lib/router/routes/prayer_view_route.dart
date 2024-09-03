import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:immaculata_app/pages/prayer_view.dart/prayer_view.dart';
import 'package:immaculata_app/pages/table_of_contents/table_of_contents.dart';

final prayerViewRoute = GoRoute(
  name: 'Prayer View',
  path: '/prayer_view',
  builder: (context, params) {
    final String? prayerFile = GoRouterState.of(context).extra as String?;

    if (prayerFile == null) return const TableOfContents();
    return PrayerView(prayerFile: prayerFile);
  },
);

void goToPrayerViewRoute(BuildContext context, String prayerFile) {
  context.go(prayerViewRoute.path, extra: prayerFile);
}
