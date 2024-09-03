import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ImageFromDataUrl extends StatelessWidget {
  const ImageFromDataUrl({super.key, required this.dataUrl});

  final String dataUrl;

  String getImageData() {
    final commaIndex = dataUrl.indexOf(",");
    return dataUrl.substring(commaIndex + 1, dataUrl.length);
  }

  @override
  Widget build(BuildContext context) {
    final byteImage = const Base64Decoder().convert(getImageData());
    return Image.memory(
      byteImage,
      fit: BoxFit.fitWidth,
    );
  }
}
