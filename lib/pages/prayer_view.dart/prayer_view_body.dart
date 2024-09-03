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
import 'package:immaculata_app/utils/layout.dart';

class PrayerViewBody extends StatelessWidget {
  const PrayerViewBody({super.key, required this.blocks});

  final List<Map> blocks;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: List.from(blocks).map((i) {
            String type = i["type"];
            String text = "${i["text"] ?? "(no text)"}";

            // extra
            Map? extra = i["extra"];

            // image
            String dataUrl = extra?["imageUrl"] ?? "";

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
                String author = extra?["quoteReference"] ?? "";
                return Quote(text: text, author: author);

              case "Image":
                return FullImage(dataUrl: dataUrl);

              /**
               * TODO: small image is not fitting width;
               */
              case "Small Image":
                String dataUrl = extra?["imageUrl"] ?? "";
                return SmallImage(dataUrl: dataUrl);

              case "Litany":
                return Litany(text: text);
              default:
                return const Text("(undefined type)");
            }
          }).map((i) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: Container(
                width: double.infinity,
                decoration: const BoxDecoration(color: Colors.black12),
                child: i,
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
