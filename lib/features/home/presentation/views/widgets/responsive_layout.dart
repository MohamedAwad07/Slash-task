// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';

class ResponsiveLayout extends StatefulWidget {
  const ResponsiveLayout({
    super.key,
    required this.mobileLayout,
    required this.webLayout,
  });

  final WidgetBuilder mobileLayout;
  final WidgetBuilder webLayout;

  @override
  _ResponsiveLayoutState createState() => _ResponsiveLayoutState();
}

class _ResponsiveLayoutState extends State<ResponsiveLayout> {
  bool isMobile = false;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        bool newIsMobile = constraints.maxWidth <= 470;

        if (newIsMobile != isMobile) {
          isMobile = newIsMobile;
          WidgetsBinding.instance.addPostFrameCallback((_) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                duration: const Duration(milliseconds: 1000),
                content: Text(isMobile ? 'Switched to mobile layout' : 'Switched to web layout'),
              ),
            );
          });
        }
        return isMobile ? widget.mobileLayout(context) : widget.webLayout(context);
      },
    );
  }
}
