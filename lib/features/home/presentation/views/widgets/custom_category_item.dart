import 'package:flutter/material.dart';

Widget categoryItem({required String label, required String imagePath}) {
  return Column(
    children: [
      Container(
        width: 64,
        height: 64,
        decoration: BoxDecoration(
          color: Colors.grey[850],
          borderRadius: BorderRadius.circular(32),
        ),
        child: Image(
          width: 25,
          height: 19,
          image: AssetImage(
            imagePath,
          ),
        ),
      ),
      const SizedBox(
        height: 5,
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
