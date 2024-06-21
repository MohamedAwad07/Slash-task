import 'package:flutter/material.dart';

Image customImage({required String imagePath, required double height, double? width, Color? color, BoxFit? boxFit}) {
  return Image(
    fit: boxFit ?? BoxFit.none,
    height: height,
    width: width ?? double.maxFinite,
    color: color,
    image: AssetImage(imagePath),
  );
}
