// ignore_for_file: constant_identifier_names

enum BottomBarEnum { Home, Favorites, MyCart, Profile }
class BottomBarModel {
  BottomBarModel({required this.icon, required this.activeIcon, this.title, required this.type});

  String icon;

  String activeIcon;

  String? title;

  BottomBarEnum type;
}
