import 'package:flutter/material.dart';
import '../../../data/models/bottom_bar_model.dart';
import 'custom_image.dart';


BottomNavigationBarItem navBarItem({required int index}) {
  return BottomNavigationBarItem(
    icon: SizedBox(
      width: double.maxFinite,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          customImage(imagePath: bottomMenuList[index].icon, height: 30),
          Padding(
            padding: const EdgeInsets.only(top: 4),
            child: Text(
              bottomMenuList[index].title ?? "",
              style: TextStyle(
                color: Colors.grey[900],
                fontSize: 14,
                fontFamily: 'Urbanist',
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ],
      ),
    ),
    activeIcon: SizedBox(
      width: 36,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          customImage(imagePath: bottomMenuList[index].activeIcon, height: 30),
          Padding(
            padding: const EdgeInsets.only(top: 4),
            child: Text(
              bottomMenuList[index].title ?? "",
              style: TextStyle(
                color: Colors.grey[900],
                fontSize: 14,
                fontFamily: 'Urbanist',
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ],
      ),
    ),
    label: '',
  );
}
