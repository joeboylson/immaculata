import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class FullImage extends StatelessWidget {
  FullImage({super.key, required this.src});

  final String src;
  final Uint8List imageData = Uint8List.fromList([]);

  @override
  Widget build(BuildContext context) {
    return Image.memory(imageData);
  }
}
