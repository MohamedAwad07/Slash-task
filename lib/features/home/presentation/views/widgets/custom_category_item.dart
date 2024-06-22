import 'package:flutter/material.dart';
import 'custom_image.dart';


Widget categoryItem({required String label, required String imagePath}) {
  return Column(
    children: [
      Container(
        width: 68,
        height: 68,
        decoration: BoxDecoration(
          color: Colors.grey[850],
          borderRadius: BorderRadius.circular(34),
        ),
        child: customImage(imagePath: imagePath, height: 20, width: 20),
      ),
      const SizedBox(
        height: 6,
      ),
      Text(
        label,
        style: const TextStyle(
          color: Color.fromARGB(251, 27, 27, 27),
          fontSize: 14,
          fontFamily: 'Urbanist',
          fontWeight: FontWeight.w500,
        ),
      ),
    ],
  );
}
