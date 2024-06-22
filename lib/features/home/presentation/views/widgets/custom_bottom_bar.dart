import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../data/models/bottom_bar_model.dart';
import '../../view_model/cubit/home_page_cubit_cubit.dart';
import '../../view_model/cubit/home_page_cubit_state.dart';
import 'bottom_nav_bar_item.dart';

class CustomBottomBar extends StatelessWidget {
  final HomePageCubit cubit;

  const CustomBottomBar({
    super.key,
    required this.cubit,
    required this.padding,
  });
  final double padding;
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomePageCubit, HomePageCubitState>(
      bloc: cubit,
      listener: (context, state) {},
      builder: (context, state) {
        return Padding(
          padding: EdgeInsets.symmetric(horizontal: padding),
          child: Container(
            height: 80,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
            ),
            child: BottomNavigationBar(
              backgroundColor: Colors.transparent,
              showSelectedLabels: true,
              showUnselectedLabels: true,
              selectedFontSize: 0,
              elevation: 0,
              currentIndex: cubit.selectedIndex,
              type: BottomNavigationBarType.fixed,
              items: List.generate(bottomMenuList.length, (index) {
                return navBarItem(index: index);
              }),
              onTap: (index) {
                cubit.changeIndex(index);
              },
            ),
          ),
        );
      },
    );
  }
}
