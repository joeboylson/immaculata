import 'package:flutter/material.dart';
import 'package:immaculata_app/blocks/index.dart';
import 'package:immaculata_app/pages/prayer_view.dart/prayer_view_header.dart';
import 'package:immaculata_app/utils/layout.dart';

class PrayerViewBody extends StatelessWidget {
  const PrayerViewBody({super.key, required this.blocks});

  final List<Map> blocks;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const ClampingScrollPhysics(),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
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
              child: SizedBox(
                width: double.infinity,
                child: i,
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
