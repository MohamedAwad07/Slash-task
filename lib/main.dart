import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'features/home/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
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
    );
  }
}
