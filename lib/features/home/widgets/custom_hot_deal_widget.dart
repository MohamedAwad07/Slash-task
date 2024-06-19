import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../core/utils/images_paths.dart';

int currentIndex = 0;

List<String> hotDealImagePaths = [
  ImagePaths.hotDeal1,
  ImagePaths.hotDeal2,
];
Widget buildHotDealsSection() {
  return Padding(
    padding: const EdgeInsets.only(right: 17, left: 10),
    child: CarouselSlider.builder(
      options: CarouselOptions(
        height: 132,
        initialPage: 0,
        autoPlay: true,
        viewportFraction: 1.0,
        enableInfiniteScroll: false,
        scrollDirection: Axis.horizontal,
        onPageChanged: (index, reason) {
          currentIndex = index;
        },
      ),
      itemCount: 2,
      itemBuilder: (context, index, realIndex) {
        return hotDealItem(imagePath: hotDealImagePaths[index]);
      },
    ),
  );
}

Widget hotDealItem({required String imagePath}) {
  return ClipRRect(
    borderRadius: BorderRadius.circular(8),
    child: Image(
      image: AssetImage(
        imagePath,
      ),
      height: 132,
      width: 320,
    ),
  );
}

Widget dots() {
  return Align(
    alignment: Alignment.center,
    child: SizedBox(
      height: 8,
      child: AnimatedSmoothIndicator(
        activeIndex: currentIndex,
        count: 2,
        axisDirection: Axis.horizontal,
        effect: ScrollingDotsEffect(
          spacing: 3,
          activeDotColor: Colors.grey[900] ?? Colors.grey,
          dotColor: Colors.grey[400] ?? Colors.grey,
          dotHeight: 7,
          dotWidth: 7,
          activeStrokeWidth: 15,
        ),
      ),
    ),
  );
}
