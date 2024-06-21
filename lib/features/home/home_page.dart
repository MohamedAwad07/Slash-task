import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:slash_task/features/home/presentation/view_model/cubit/home_page_cubit_cubit.dart';
import 'package:slash_task/features/home/presentation/view_model/cubit/home_page_cubit_state.dart';
import '../appBar/app_bar_view.dart';
import 'presentation/views/widgets/custom_bottom_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: BlocConsumer<HomePageCubit, HomePageCubitState>(
        listener: (context, state) {},
        builder: (context, state) {
          HomePageCubit cubit = HomePageCubit.get(context);
          return Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: buildAppBar(context),
            body: cubit.currentScreen[cubit.selectedIndex],
            bottomNavigationBar: CustomBottomBar(
              cubit: cubit,
            ),
          );
        },
      ),
    );
  }
}
