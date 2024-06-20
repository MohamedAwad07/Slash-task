// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class AppBarTitle extends StatelessWidget {
  AppBarTitle({super.key, required this.text, this.margin, this.onTap});

  String text;

  EdgeInsetsGeometry? margin;

  Function? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap?.call();
      },
      child: Padding(
        padding: margin ?? EdgeInsets.zero,
        child: Text(
          text,
          style: TextStyle(
            color: Colors.grey[900],
            fontSize: 20,
            fontFamily: 'Urbanist',
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    );
  }
}
