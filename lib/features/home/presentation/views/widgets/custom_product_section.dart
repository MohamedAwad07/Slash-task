import 'package:flutter/material.dart';
import 'package:slash_task/features/home/data/models/dummy%20data%20models/dummyDataModel.dart';
import 'custom_product_item.dart';

Widget buildProductSection(DummyData data, String categoryKind) {
  return Padding(
    padding: const EdgeInsets.only(left: 24, right: 12),
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
