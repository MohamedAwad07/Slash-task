import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../core/utils/images_paths.dart';
import '../../views/widgets/default_widget.dart';
import '../../views/widgets/home_fetch_data.dart';
import 'home_page_cubit_state.dart';

class HomePageCubit extends Cubit<HomePageCubitState> {
  HomePageCubit() : super(HomePageCubitInitial());

  static HomePageCubit get(context) => BlocProvider.of(context);
  int selectedIndex = 0;
  int currentHotDealIndex = 0;
  List<Widget> currentMobileScreen = [
    const HomeFetchData(padding: 0, web: false),
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

  List<Widget> currentWebScreen = [
    const HomeFetchData(padding: 30, web: true),
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

  List<String> hotDealImagePaths = [
    ImagePaths.hotDeal1,
    ImagePaths.hotDeal2,
  ];

  void changeDot(int index) {
    currentHotDealIndex = index;
    emit(ChangeDotState());
  }
}
