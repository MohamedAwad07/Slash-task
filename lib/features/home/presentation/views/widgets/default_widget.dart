import 'package:flutter/material.dart';

class DefaultWidget extends StatelessWidget {
  const DefaultWidget({super.key, required this.content});
  final String content;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xffffffff),
      padding: const EdgeInsets.all(10),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              content,
              style: const TextStyle(
                fontSize: 18,
              ),
            )
          ],
        ),
      ),
    );
  }
}

