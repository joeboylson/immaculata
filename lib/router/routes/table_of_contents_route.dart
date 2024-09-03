import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:immaculata_app/pages/table_of_contents/table_of_contents.dart';

final tableOfContentsRoute = GoRoute(
  name: 'Table of Contents',
  path: '/table_of_contents',
  builder: (context, params) => const TableOfContents(),
);

void goToTableOfContentRoute(BuildContext context) {
  context.push(tableOfContentsRoute.path);
}
