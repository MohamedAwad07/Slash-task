import 'package:flutter/material.dart';
import '../../core/utils/images_paths.dart';
import 'presentation/views/widgets/custom_app_bar.dart';
import 'presentation/views/widgets/custom_app_bar_image.dart';
import 'presentation/views/widgets/custom_app_bar_title.dart';

PreferredSizeWidget buildAppBar(BuildContext context) {
  return CustomAppBar(
    title: Padding(
      padding: const EdgeInsets.only(left: 24, right: 24),
      child: Row(
        children: [
          const AppBarTitle(
            text: "Slash.",
          ),
          const Spacer(),
          Row(
            children: [
              AppBarTitleImage(),
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
                    ),
                  ],
                ),
              ),
              MouseRegion(
                cursor: SystemMouseCursors.click,
                child: Padding(
                  padding: const EdgeInsets.only(left: 7),
                  child: Image(
                    image: AssetImage(ImagePaths.arrow),
                    height: 20,
                    width: 20,
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.only(left: 7.0, right: 7),
            child: MouseRegion(
              cursor: SystemMouseCursors.click,
              child: Stack(
                alignment: Alignment.topRight,
                children: [
                  Image(
                    image: AssetImage(ImagePaths.notification),
                    height: 30,
                    width: 30,
                    color: Colors.black,
                  ),
                  Image(
                    image: AssetImage(ImagePaths.ellipse),
                    height: 12,
                    width: 12,
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
