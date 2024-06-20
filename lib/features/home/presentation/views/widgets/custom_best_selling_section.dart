import 'package:flutter/material.dart';
import '../../../data/models/dummy data models/dummyDataModel.dart';
import 'custom_product_item.dart';

Widget buildProductSection(DummyData data, String categoryKind) {
  return Padding(
    padding: const EdgeInsets.only(
      left: 24,
    ),
    child: SizedBox(
      height: 185,
      width: double.maxFinite,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        separatorBuilder: (context, index) {
          return const SizedBox(
            width: 10,
          );
        },
        itemCount: data.bestSelling.length,
        itemBuilder: (context, index) {
          if (categoryKind == "Best Selling") {
            return productItem(data.bestSelling[index]);
          } else if (categoryKind == "New Arrival") {
            return productItem(data.newArrival[index]);
          } else if (categoryKind == "RecommendedForYou") {
            return productItem(data.recommendedForYou[index]);
          }
          return null;
        },
      ),
    ),
  );
}
