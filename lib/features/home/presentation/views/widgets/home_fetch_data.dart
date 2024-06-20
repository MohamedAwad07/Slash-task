import 'package:flutter/material.dart';

import '../../../data/models/dummy data models/dummyDataModel.dart';
import 'home_page_body.dart';

class HomeFetchData extends StatelessWidget {
  const HomeFetchData({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
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
    );
  }
}
