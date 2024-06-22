import 'package:flutter/material.dart';
import 'package:slash_task/features/home/presentation/view_model/cubit/home_page_cubit_cubit.dart';

import '../../../../appBar/app_bar_view.dart';
import 'custom_bottom_bar.dart';

// final double webPadding = MediaQuery.of(context).size.width * 0.1;

class WebLayout extends StatelessWidget {
  const WebLayout({super.key, required this.cubit});
  final HomePageCubit cubit;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: buildAppBar(context, MediaQuery.of(context).size.width * 0.05),
      body: cubit.currentWebScreen[cubit.selectedIndex],
      bottomNavigationBar: CustomBottomBar(
        cubit: cubit,
        padding: 0,
      ),
    );
  }
}
