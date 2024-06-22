import 'package:flutter/material.dart';
import '../../../../appBar/app_bar_view.dart';
import '../../view_model/cubit/home_page_cubit_cubit.dart';
import 'custom_bottom_bar.dart';

class MobileLayout extends StatelessWidget {
  const MobileLayout({
    super.key,
    required this.cubit,
  });

  final HomePageCubit cubit;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: buildAppBar(context, 0),
      body: cubit.currentMobileScreen[cubit.selectedIndex],
      bottomNavigationBar: CustomBottomBar(
        cubit: cubit,
        padding: 0,
      ),
    );
  }
}
