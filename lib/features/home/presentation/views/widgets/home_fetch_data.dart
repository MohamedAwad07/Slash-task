import 'package:error_message/error_message.dart';
import 'package:flutter/material.dart';
import '../../../data/models/dummy data models/dummy_data_model.dart';
import 'home_page_body_mobile.dart';
import 'home_page_body_web.dart';

class HomeFetchData extends StatelessWidget {
  const HomeFetchData({super.key, required this.padding, required this.web});
  final double padding;
  final bool web;
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: fetchDummyData(),
      builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        } else if (snapshot.hasError) {
          return const Center(
            child: ErrorMessage(
              icon: Icon(
                Icons.error,
                color: Colors.red,
              ),
              title: "Error!",
              description: "Connect to the internet and try again ...",
            ),
          );
        } else if (snapshot.hasData) {
          return web ? homePageBodyWeb(context, snapshot.data, padding: padding) : homePageBodyMobile(context, snapshot.data, padding: padding);
        } else {
          return const Center(child: Text('No data found'));
        }
      },
    );
  }
}
