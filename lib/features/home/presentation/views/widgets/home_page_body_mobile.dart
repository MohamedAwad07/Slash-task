import 'package:flutter/material.dart';
import '../../../data/models/category_section_model.dart';
import '../../../data/models/dummy data models/dummy_data_model.dart';
import 'custom_product_section.dart';
import 'custom_category_section_body.dart';
import 'custom_header_section.dart';
import 'custom_hot_deal_widget.dart';
import 'custom_search_bar.dart';

Widget homePageBodyMobile(BuildContext context, DummyData data, {required double padding}) {
  return Padding(
    padding: const EdgeInsets.only(
      top: 12,
    ),
    child: SingleChildScrollView(
      child: Container(
        width: double.infinity,
        margin: const EdgeInsets.only(bottom: 4),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            buildSearchBar(context),
            const SizedBox(height: 24),
            const HotDealsSection(padding: 0),
            const SizedBox(height: 24),
            buildSectionsHeader(headerName: "Categories"),
            const SizedBox(height: 10),
            buildCategorySection(itemCount: categorySectionList.length),
            const SizedBox(height: 10),
            buildSectionsHeader(headerName: "Best Selling"),
            const SizedBox(height: 10),
            buildProductSection(data, "Best Selling", itemCount: 5),
            const SizedBox(height: 10),
            buildSectionsHeader(headerName: "New Arrival"),
            const SizedBox(height: 10),
            buildProductSection(data, "New Arrival", itemCount: 5),
            const SizedBox(height: 10),
            buildSectionsHeader(headerName: "Recommended for you"),
            const SizedBox(height: 10),
            buildProductSection(data, "RecommendedForYou", itemCount: 5),
          ],
        ),
      ),
    ),
  );
}
