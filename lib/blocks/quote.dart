import 'package:flutter/material.dart';

class Quote extends StatelessWidget {
  const Quote({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(text);
  }
}
