import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:immaculata_app/blocks/utils.dart';

class BodyCentered extends StatelessWidget {
  const BodyCentered({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return MarkdownBody(
      fitContent: false,
      data: text,
      styleSheet: MarkdownStyleSheet(
        textAlign: WrapAlignment.center,
        p: bodyTextStyle,
      ),
    );
  }
}
