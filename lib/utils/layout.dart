import 'package:flutter/material.dart';

double getPageHeight(BuildContext context) {
  return MediaQuery.of(context).size.height;
}

double getPageWidth(BuildContext context) {
  return MediaQuery.of(context).size.width;
}
