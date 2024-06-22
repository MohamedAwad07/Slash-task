import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../view_model/cubit/home_page_cubit_cubit.dart';
import '../../view_model/cubit/home_page_cubit_state.dart';
import 'hot_deal_item.dart';

class HotDealsSection extends StatelessWidget {
  const HotDealsSection({super.key, required this.padding});
  final double padding;
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomePageCubit, HomePageCubitState>(
      listener: (context, state) {},
      builder: (context, state) {
        HomePageCubit cubit = HomePageCubit.get(context);
        List<String> hotDealImagePaths = cubit.hotDealImagePaths;
        return Padding(
          padding: EdgeInsets.only(
            right: padding + 30,
            left: padding + 24,
          ),
          child: Column(
            children: [
              CarouselSlider.builder(
                options: CarouselOptions(
                  height: MediaQuery.of(context).size.width * 0.4,
                  initialPage: 0,
                  autoPlay: true,
                  viewportFraction: 1.05,
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
              const SizedBox(
                height: 10,
              ),
              dots(context, hotDealImagePaths.length),
            ],
          ),
        );
      },
    );
  }

  Widget dots(BuildContext context, int dotCount) {
    return Align(
      alignment: Alignment.center,
      child: SizedBox(
        height: 8,
        child: BlocBuilder<HomePageCubit, HomePageCubitState>(
          builder: (context, state) {
            HomePageCubit cubit = HomePageCubit.get(context);
            return AnimatedSmoothIndicator(
              activeIndex: cubit.currentHotDealIndex,
              count: dotCount,
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
            );
          },
        ),
      ),
    );
  }
}
