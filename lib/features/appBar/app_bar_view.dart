import 'package:flutter/material.dart';
import '../../core/utils/images_paths.dart';
import 'widgets/custom_app_bar.dart';
import 'widgets/custom_app_bar_image.dart';
import 'widgets/custom_app_bar_title.dart';

PreferredSizeWidget buildAppBar(BuildContext context) {
  return CustomAppBar(
    title: Padding(
      padding: const EdgeInsets.only(left: 24, right: 30),
      child: Row(
        children: [
          AppBarTitle(
            text: "Slash.",
            margin: const EdgeInsets.only(
              top: 5,
              bottom: 2,
            ),
          ),
          const Spacer(),
          Row(
            children: [
              AppBarTitleImage(
                margin: const EdgeInsets.only(
                  top: 5,
                  bottom: 2,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 2),
                child: Column(
                  children: [
                    Text(
                      "Nasr City",
                      style: TextStyle(
                        color: Colors.grey[800],
                        fontSize: 14,
                        fontFamily: 'Urbanist',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Text(
                      "Cairo",
                      style: TextStyle(
                        color: Colors.grey[900],
                        fontSize: 16,
                        fontFamily: 'Urbanist',
                        fontWeight: FontWeight.w700,
                      ),
                    )
                  ],
                ),
              ),
              MouseRegion(
                cursor: SystemMouseCursors.click,
                child: GestureDetector(
                  onTap: () {},
                  child: Padding(
                    padding: const EdgeInsets.only(left: 7),
                    child: Image(
                      image: AssetImage(ImagePaths.arrow),
                      height: 20,
                      width: 20,
                      //width: double.maxFinite,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ],
          ),
          const Spacer(),
          MouseRegion(
            cursor: SystemMouseCursors.click,
            child: GestureDetector(
              onTap: () {},
              child: Stack(
                alignment: Alignment.topRight,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 7),
                    child: Image(
                      image: AssetImage(ImagePaths.notification),
                      height: 30,
                      width: 30,
                      //width: double.maxFinite,
                      color: Colors.black,
                    ),
                  ),
                  Image(
                    image: AssetImage(ImagePaths.ellipse),
                    height: 12,
                    width: 12,
                    //width: double.maxFinite,
                    color: Colors.red,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
