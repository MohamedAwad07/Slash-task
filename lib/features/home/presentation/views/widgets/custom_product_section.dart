import 'package:flutter/material.dart';
import '../../../data/models/dummy data models/dummy_data_model.dart';
import 'custom_product_item.dart';

Widget buildProductSection(DummyData data, String categoryKind, {double? padding , required int itemCount} ) {
  return Padding(
    padding: EdgeInsets.only(
      left: padding ?? 24,
      right: padding ?? 12,
    ),
    child: SizedBox(
      height: 170,
      width: double.maxFinite,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        separatorBuilder: (context, index) {
          return const SizedBox(
            width: 12,
          );
        },
        itemCount: itemCount,
        itemBuilder: (context, index) {
          if (categoryKind == "Best Selling") {
            return productItem(data.bestSelling[index % 5]);
          } else if (categoryKind == "New Arrival") {
            return productItem(data.newArrival[index % 5]);
          } else if (categoryKind == "RecommendedForYou") {
            return productItem(data.recommendedForYou[index % 5]);
          }
          return null;
        },
      ),
    ),
  );
}
