import 'package:flutter/widgets.dart';
import 'custom_search_bar.dart';

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
            const SizedBox(height: 24),
            // buildHotDealsSection(context),
            // const SizedBox(height: 28),
            // buildCategoriesHeader(context),
            // const SizedBox(height: 16),
            // buildCategoriesSection(context),
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
