import 'package:flutter/material.dart';
import 'custom_image.dart';

Widget hotDealItem({required String imagePath}) {
  return ClipRRect(
    borderRadius: BorderRadius.circular(8),
    child: customImage(imagePath: imagePath, height: 132, width: 300),
  );
}
