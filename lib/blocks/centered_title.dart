import 'package:flutter/material.dart';

class CenteredTitle extends StatelessWidget {
  const CenteredTitle({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(text);
  }
}
