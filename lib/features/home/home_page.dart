import 'package:flutter/material.dart';
import 'package:slash_task/features/home/widgets/custom_bottom_bar.dart';
import '../appBar/app_bar_view.dart';
import 'widgets/home_page_body.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: buildAppBar(context),
        body: homePageBody(context),
        bottomNavigationBar: CustomBottomBar(),
      ),
    );
  }
}
