import 'package:flutter/material.dart';
import 'custom_image.dart';

Widget hotDealItem({required String imagePath}) {
  return Builder(
    builder: (BuildContext context) {
      return ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child: customImage(imagePath: imagePath, height: MediaQuery.of(context).size.height * 0.2, width: MediaQuery.of(context).size.width * 0.863, boxFit: BoxFit.fill),
      );
    },
  );
}
