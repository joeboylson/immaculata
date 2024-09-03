import 'package:flutter/material.dart';
import 'package:immaculata_app/blocks/utils.dart';

class BodyCentered extends StatelessWidget {
  const BodyCentered({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: bodyTextStyle,
      textAlign: TextAlign.center,
    );
  }
}
