import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:immaculata_app/blocks/utils.dart';

class Quote extends StatelessWidget {
  const Quote({super.key, required this.text, required this.author});

  final String text;
  final String author;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        MarkdownBody(
          fitContent: false,
          data: text,
          styleSheet: MarkdownStyleSheet(
            p: quoteTextStyle,
          ),
        ),
        Text(
          "- $author",
          style: bodyTextStyle,
          textAlign: TextAlign.right,
        )
      ],
    );
  }
}
