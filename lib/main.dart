import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:slash_task/features/home/presentation/view_model/home%20cubit/cubit/home_page_cubit_cubit.dart';
import 'features/home/home_page.dart';
import 'observer.dart';

void main() {
  Bloc.observer = MyBlocObserver();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomePageCubit(),
      child: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          if (kDebugMode) {
            print(constraints.minWidth.toInt());
          }
          return const MaterialApp(
            title: "Slash home page",
            debugShowCheckedModeBanner: false,
            home: HomePage(),
          );
        },
      ),
    );
  }
}
