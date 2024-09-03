import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:immaculata_app/layout/image_from_data_url/image_from_data_url.dart';
import 'package:immaculata_app/utils/layout.dart';

class SmallImage extends StatelessWidget {
  const SmallImage({super.key, required this.dataUrl});

  final String dataUrl;

  @override
  Widget build(BuildContext context) {
    double width = getPageWidth(context) * 0.68;

    return Container(
      width: 100,
      decoration: const BoxDecoration(color: Colors.black12),
      clipBehavior: Clip.hardEdge,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ImageFromDataUrl(dataUrl: dataUrl),
      ),
    );
  }
}
