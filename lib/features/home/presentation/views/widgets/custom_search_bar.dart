import 'package:flutter/material.dart';
import 'package:slash_task/core/utils/images_paths.dart';
import 'custom_image.dart';
import 'custom_text_form_field.dart';

Widget buildSearchBar(BuildContext context, {double? padding}) {
  return Padding(
    padding: EdgeInsets.only(
      right: padding ?? 24.0,
      left: padding ?? 0,
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      children: [
        const Expanded(
          child: Padding(
            padding: EdgeInsets.only(
              left: 24,
            ),
            child: SizedBox(
              width: double.maxFinite,
              child: CustomTextFormField(),
            ),
          ),
        ),
        IconButton(
          //iconSize: 100,
          onPressed: () {},
          icon: customImage(
            imagePath: ImagePaths.horizontalSlider,
            height: 50,
            width: 50,
            boxFit: BoxFit.fill,
          ),
        ),
      ],
    ),
  );
}
