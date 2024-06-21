import 'package:flutter/material.dart';
import 'package:slash_task/features/home/data/models/category_section_model.dart';
import 'custom_category_item.dart';

Widget buildCategorySection() {
  return Padding(
    padding: const EdgeInsets.only(
      left: 24,
      right: 12,
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
        itemCount: categorySectionList.length,
        itemBuilder: (context, index) {
          return categoryItem(imagePath: categorySectionList[index].imagePath, label: categorySectionList[index].label);
        },
      ),
    ),
  );
}
