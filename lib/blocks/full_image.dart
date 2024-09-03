import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:immaculata_app/layout/image_from_data_url/image_from_data_url.dart';

class FullImage extends StatelessWidget {
  const FullImage({super.key, required this.dataUrl});

  final String dataUrl;

  @override
  Widget build(BuildContext context) {
    return ImageFromDataUrl(dataUrl: dataUrl);
  }
}
