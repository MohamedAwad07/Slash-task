import 'package:flutter/material.dart';
import 'package:slash_task/features/home/data/models/dummy%20data%20models/dummyDataModel.dart';
import '../appBar/app_bar_view.dart';
import 'presentation/views/widgets/custom_bottom_bar.dart';
import 'presentation/views/widgets/home_page_body.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: buildAppBar(context),
        body: FutureBuilder(
          future: fetchDummyData(),
          builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(child: CircularProgressIndicator());
            } else if (snapshot.hasError) {
              return Center(child: Text('Error: ${snapshot.error}'));
            } else if (snapshot.hasData) {
              return homePageBody(context, snapshot.data!);
            } else {
              return const Center(child: Text('No data found'));
            }
          },
        ),
        bottomNavigationBar: CustomBottomBar(),
      ),
    );
  }
}
