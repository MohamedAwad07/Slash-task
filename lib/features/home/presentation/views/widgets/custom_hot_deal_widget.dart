// ignore_for_file: library_private_types_in_public_api

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:slash_task/core/utils/images_paths.dart';
import 'package:slash_task/features/home/presentation/view_model/cubit/home_page_cubit_cubit.dart';
import 'package:slash_task/features/home/presentation/view_model/cubit/home_page_cubit_state.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HotDealsSection extends StatefulWidget {
  const HotDealsSection({super.key});

  @override
  _HotDealsSectionState createState() => _HotDealsSectionState();
}

class _HotDealsSectionState extends State<HotDealsSection> {
  List<String> hotDealImagePaths = [
    ImagePaths.hotDeal1,
    ImagePaths.hotDeal2,
  ];

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomePageCubit, HomePageCubitState>(
      listener: (context, state) {},
      builder: (context, state) {
        HomePageCubit cubit = HomePageCubit.get(context);
        return Column(
          children: [
            Padding(
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
                    cubit.changeDot(index);
                  },
                ),
                itemCount: hotDealImagePaths.length,
                itemBuilder: (context, index, realIndex) {
                  return hotDealItem(imagePath: hotDealImagePaths[index]);
                },
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            dots(),
          ],
        );
      },
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
          activeIndex: HomePageCubit.get(context).currentHotDealIndex,
          count: hotDealImagePaths.length,
          axisDirection: Axis.horizontal,
          effect: WormEffect(
            spacing: 3,
            activeDotColor: Colors.grey[900] ?? Colors.grey,
            dotColor: Colors.grey[400] ?? Colors.grey,
            dotHeight: 7,
            dotWidth: 7,
            strokeWidth: 15,
            radius: 8,
          ),
        ),
      ),
    );
  }
}
