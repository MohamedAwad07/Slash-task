import 'package:flutter/material.dart';
import '../../../data/models/dummy data models/dummy_data_model.dart';
import 'custom_product_section.dart';
import 'custom_category_section_body.dart';
import 'custom_header_section.dart';
import 'custom_hot_deal_widget.dart';
import 'custom_search_bar.dart';

Widget homePageBodyWeb(BuildContext context, DummyData data, {required double padding}) {
  final sectionHeaderPadding = MediaQuery.of(context).size.width * 0.05;
  final productSectionPadding = MediaQuery.of(context).size.width * 0.08;

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
            buildSearchBar(context, padding: MediaQuery.of(context).size.width * 0.05),
            const SizedBox(height: 24),
            HotDealsSection(padding: padding),
            const SizedBox(height: 24),
            buildSectionsHeader(headerName: "Categories", padding: sectionHeaderPadding),
            const SizedBox(height: 10),
            buildCategorySection(padding: productSectionPadding , itemCount: 20),
            const SizedBox(height: 10),
            buildSectionsHeader(headerName: "Best Selling", padding: sectionHeaderPadding),
            const SizedBox(height: 10),
            buildProductSection(data, "Best Selling", padding: productSectionPadding , itemCount: 15),
            const SizedBox(height: 10),
            buildSectionsHeader(headerName: "New Arrival", padding: sectionHeaderPadding),
            const SizedBox(height: 10),
            buildProductSection(data, "New Arrival", padding: productSectionPadding, itemCount: 15),
            const SizedBox(height: 10),
            buildSectionsHeader(headerName: "Recommended for you", padding: sectionHeaderPadding),
            const SizedBox(height: 10),
            buildProductSection(data, "RecommendedForYou", padding: productSectionPadding, itemCount: 15),
          ],
        ),
      ),
    ),
  );
}
