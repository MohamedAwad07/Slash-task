import 'package:flutter/material.dart';

import '../../../core/utils/images_paths.dart';
// ignore_for_file: must_be_immutable

class AppBarTitleImage extends StatelessWidget {
  AppBarTitleImage({
    super.key,
    this.margin,
  });

  EdgeInsetsGeometry? margin;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: Image(
        image: AssetImage(ImagePaths.appBarLocation),
        height: 30,
        //width: double.maxFinite,
        color: Colors.grey[900],
      ),
    );
  }
}
