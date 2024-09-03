import 'package:flutter/material.dart';
import 'package:immaculata_app/blocks/utils.dart';

class Body extends StatelessWidget {
  const Body({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: bodyTextStyle,
    );
  }
}
