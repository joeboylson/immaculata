import 'package:flutter/material.dart';
import 'package:immaculata_app/layout/image_from_data_url/image_from_data_url.dart';
import 'package:immaculata_app/utils/layout.dart';

class SmallImage extends StatelessWidget {
  const SmallImage({super.key, required this.dataUrl});

  final String dataUrl;

  @override
  Widget build(BuildContext context) {
    double pageWidth = getPageWidth(context);
    double padding = (pageWidth - (pageWidth * 0.68)) / 2;

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: padding),
      child: ImageFromDataUrl(dataUrl: dataUrl),
    );
  }
}
