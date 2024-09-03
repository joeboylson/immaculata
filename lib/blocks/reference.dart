import 'package:flutter/material.dart';

class Reference extends StatelessWidget {
  const Reference({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(text);
  }
}
