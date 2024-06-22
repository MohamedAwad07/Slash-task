import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'presentation/view_model/cubit/home_page_cubit_cubit.dart';
import 'presentation/view_model/cubit/home_page_cubit_state.dart';
import 'presentation/views/widgets/responsive_layout.dart';
import 'presentation/views/widgets/mobile_layout.dart';
import 'presentation/views/widgets/web_layout.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: BlocConsumer<HomePageCubit, HomePageCubitState>(
        listener: (context, state) {},
        builder: (context, state) {
          HomePageCubit cubit = HomePageCubit.get(context);
          return ResponsiveLayout(
            mobileLayout: (context) => MobileLayout(cubit: cubit),
            webLayout: (context) => WebLayout(cubit: cubit),
          );
        },
      ),
    );
  }
}
