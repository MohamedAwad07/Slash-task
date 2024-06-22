import 'package:flutter/material.dart';
import '../../../data/models/category_section_model.dart';
import 'custom_category_item.dart';

Widget buildCategorySection({double? padding , required int itemCount}) {
  return Padding(
    padding: EdgeInsets.only(
      left: padding ?? 24,
      right: padding ?? 12,
    ),
    child: SizedBox(
      height: 100,
      width: double.maxFinite,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        separatorBuilder: (context, index) {
          return const SizedBox(
            width: 8,
          );
        },
        itemCount: itemCount,
        itemBuilder: (context, index) {
          return categoryItem(imagePath: categorySectionList[index % 6].imagePath, label: categorySectionList[index % 6].label);
        },
      ),
    ),
  );
}
