import 'dart:convert';

import 'package:flutter/services.dart';

Future<List> readPrayerFile(String prayerFile) async {
  final String response = await rootBundle.loadString(prayerFile);
  final data = await json.decode(response);
  return List.from(data);
}
