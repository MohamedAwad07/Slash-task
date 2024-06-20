import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:slash_task/features/home/presentation/view_model/home%20cubit/cubit/home_page_cubit_cubit.dart';
import 'package:slash_task/features/home/presentation/view_model/home%20cubit/cubit/home_page_cubit_state.dart';
import '../../../data/models/bottom_bar_model.dart';

class CustomBottomBar extends StatelessWidget {
  final HomePageCubit cubit;

  const CustomBottomBar({
    super.key,
    required this.cubit,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomePageCubit, HomePageCubitState>(
      bloc: cubit,
      listener: (context, state) {},
      builder: (context, state) {
        return Container(
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
              return BottomNavigationBarItem(
                icon: SizedBox(
                  width: double.maxFinite,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image(
                        image: AssetImage(bottomMenuList[index].icon),
                        height: 30,
                        width: double.maxFinite,
                        color: Colors.grey[900],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 4),
                        child: Text(
                          bottomMenuList[index].title ?? "",
                          style: TextStyle(
                            color: Colors.grey[900],
                            fontSize: 14,
                            fontFamily: 'Urbanist',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                activeIcon: SizedBox(
                  width: 36,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image(
                        image: AssetImage(bottomMenuList[index].activeIcon),
                        height: 30,
                        width: double.maxFinite,
                        color: Colors.grey[900],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 4),
                        child: Text(
                          bottomMenuList[index].title ?? "",
                          style: TextStyle(
                            color: Colors.grey[900],
                            fontSize: 14,
                            fontFamily: 'Urbanist',
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                label: '',
              );
            }),
            onTap: (index) {
              cubit.changeIndex(index);
            },
          ),
        );
      },
    );
  }
}
