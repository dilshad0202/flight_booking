
import 'package:flutter/material.dart';

class BaseImage extends StatelessWidget {
  const BaseImage(
      {super.key, required this.path, this.width, this.height, this.fit});

  final String path;
  final double? width;
  final double? height;
  final BoxFit? fit;

  @override
  Widget build(BuildContext context) {
    Widget imageAsset = Image.asset(
      path,
      width: width,
      height: height,
      fit: fit,
    );
    return imageAsset;
  }
}
