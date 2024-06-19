// ignore_for_file: constant_identifier_names


import '../../../../core/utils/images_paths.dart';

enum BottomBarEnum { Home, Favorites, MyCart, Profile }
class BottomBarModel {
  BottomBarModel({required this.icon, required this.activeIcon, this.title, required this.type});

  String icon;

  String activeIcon;

  String? title;

  BottomBarEnum type;
}
List<BottomBarModel> bottomMenuList = [
    BottomBarModel(
      icon: ImagePaths.bottomBarHome,
      activeIcon: ImagePaths.bottomBarHome,
      title: "Home",
      type: BottomBarEnum.Home,
    ),
    BottomBarModel(
      icon: ImagePaths.bottomBarFavorites,
      activeIcon: ImagePaths.bottomBarFavorites,
      title: "Favorites",
      type: BottomBarEnum.Favorites,
    ),
    BottomBarModel(
      icon: ImagePaths.bottomBarMyCart,
      activeIcon: ImagePaths.bottomBarMyCart,
      title: "My Cart",
      type: BottomBarEnum.MyCart,
    ),
    BottomBarModel(
      icon: ImagePaths.bottomBarProfile,
      activeIcon: ImagePaths.bottomBarProfile,
      title: "Profile",
      type: BottomBarEnum.Profile,
    )
  ];