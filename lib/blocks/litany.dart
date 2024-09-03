import 'package:flutter/material.dart';

class Litany extends StatelessWidget {
  const Litany({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(text);
  }
}
