import 'package:flutter/material.dart';

import '../../../../../core/utils/images_paths.dart';

Widget buildSectionsHeader({required String headerName}) {
  return SizedBox(
    width: double.maxFinite,
    child: Align(
      alignment: Alignment.topCenter,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            Text(
              headerName,
              style: TextStyle(
                color: Colors.grey[900],
                fontSize: 22,
                fontFamily: 'Urbanist',
                fontWeight: FontWeight.w600,
              ),
            ),
            const Spacer(),
            Text(
              "See all",
              style: TextStyle(
                color: Colors.grey[900],
                fontSize: 16,
                fontFamily: 'Urbanist',
                fontWeight: FontWeight.w500,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 5),
              child: IconButton(
                iconSize: 20,
                //  padding: const EdgeInsets.all(2),
                onPressed: () {},
                icon: Image(
                  image: AssetImage(ImagePaths.seeAllButton),
                ),
              ),
            )
          ],
        ),
      ),
    ),
  );
}
