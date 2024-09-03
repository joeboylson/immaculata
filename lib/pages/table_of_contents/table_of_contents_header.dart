import 'package:flutter/material.dart';

class TableOfContentsHeader extends StatelessWidget {
  const TableOfContentsHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(color: Color.fromARGB(25, 0, 0, 0)),
      child: const Padding(
        padding: EdgeInsets.all(8),
        child: Text(">>> table of contents header"),
      ),
    );
  }
}
