import 'package:flutter/material.dart';
import 'package:immaculata_app/blocks/body.dart';
import 'package:immaculata_app/blocks/body_centered.dart';
import 'package:immaculata_app/blocks/centered_title.dart';
import 'package:immaculata_app/blocks/full_image.dart';
import 'package:immaculata_app/blocks/info_text.dart';
import 'package:immaculata_app/blocks/litany.dart';
import 'package:immaculata_app/blocks/quote.dart';
import 'package:immaculata_app/blocks/reference.dart';
import 'package:immaculata_app/blocks/small_image.dart';

class PrayerViewBody extends StatelessWidget {
  const PrayerViewBody({super.key, required this.blocks});

  final List<Map> blocks;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: Column(
        children: List.from(blocks).map((i) {
          String type = i["type"];
          String text = "$type: ${i["text"] ?? "(no text)"}";

          switch (type) {
            case "Body":
              return Body(text: text);

            case "Centered Title":
              return CenteredTitle(text: text);

            case "Body Centered":
              return BodyCentered(text: text);

            case "Info Text":
              return InfoText(text: text);

            case "Reference":
              return Reference(text: text);

            case "Quote":
              return Quote(text: text);

            case "Image":
              return FullImage(src: text);

            case "Small Image":
              return SmallImage(src: text);

            case "Litany":
              return Litany(text: text);
            default:
              return const Text("(undefined type)");
          }
        }).toList(),
      ),
    );
  }
}
