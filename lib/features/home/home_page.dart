import 'package:flutter/material.dart';
import 'package:slash_task/features/home/widgets/custom_bottom_bar.dart';
import '../appBar/app_bar_view.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      bottomNavigationBar: CustomBottomBar(),
    );
  }
}
