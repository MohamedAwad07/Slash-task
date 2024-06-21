import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:slash_task/features/home/presentation/views/widgets/default_widget.dart';
import 'package:slash_task/features/home/presentation/views/widgets/home_fetch_data.dart';
import 'home_page_cubit_state.dart';

class HomePageCubit extends Cubit<HomePageCubitState> {
  HomePageCubit() : super(HomePageCubitInitial());

  static HomePageCubit get(context) => BlocProvider.of(context);

  int selectedIndex = 0;
  int currentHotDealIndex = 0;
  List<Widget> currentScreen = [
    const HomeFetchData(),
    const DefaultWidget(
      content: 'Favorite Section',
    ),
    const DefaultWidget(
      content: 'My Cart Section',
    ),
    const DefaultWidget(
      content: 'Profile Section',
    ),
  ];
  void changeIndex(int index) {
    selectedIndex = index;
    emit(BottomNavBarChangeState());
  }

  void changeDot(int index) {
    currentHotDealIndex = index;
    emit(ChangeDotState());
  }
}
