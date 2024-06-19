import 'package:flutter/material.dart';
import '../presentation/views/widgets/custom_category_section_body.dart';
import '../presentation/views/widgets/custom_header_section.dart';
import '../presentation/views/widgets/custom_hot_deal_widget.dart';
import '../presentation/views/widgets/custom_search_bar.dart';

Widget homePageBody(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.only(top: 12),
    child: SingleChildScrollView(
      child: Container(
        width: double.infinity,
        margin: const EdgeInsets.only(bottom: 4),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            buildSearchBar(context),
            const SizedBox(height: 20),
            buildHotDealsSection(),
            const SizedBox(height: 14),
            dots(),
            const SizedBox(height: 28),
            buildSectionsHeader(headerName: "Categories"),
            const SizedBox(height: 16),
            buildCategorySection(),
            // const SizedBox(height: 28),
            // buildBestSellingSection(context),
            // const SizedBox(height: 34),
            // buildMainContent(context)
          ],
        ),
      ),
    ),
  );
}
