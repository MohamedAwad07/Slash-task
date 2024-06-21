import 'package:flutter/material.dart';
import '../../../../../core/utils/images_paths.dart';
import '../../../data/models/dummy data models/dummyDataModel.dart';
import 'custom_image.dart';

Widget productItem(Product products) {
  //print(products.image);
  return SizedBox(
    width: 125,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: double.maxFinite,
          child: Card(
            clipBehavior: Clip.antiAlias,
            elevation: 0,
            margin: EdgeInsets.zero,
            color: Colors.grey[600],
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            child: Container(
              height: 116,
              width: double.maxFinite,
              decoration: BoxDecoration(
                color: Colors.grey[600],
                borderRadius: BorderRadius.circular(8),
              ),
              child: Stack(
                alignment: Alignment.topRight,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: customImage(imagePath: products.image, height: 116, boxFit: BoxFit.fitHeight),
                  ),
                  IconButton(
                    iconSize: 26,
                    alignment: Alignment.topRight,
                    onPressed: () {},
                    icon: customImage(imagePath: ImagePaths.loveLogo, height: 26, width: 26),
                  ),
                ],
              ),
            ),
          ),
        ),
        const SizedBox(height: 6),
        Text(
          products.name,
          style: TextStyle(
            color: Colors.grey[900],
            fontSize: 16,
            fontFamily: 'Urbanist',
            fontWeight: FontWeight.w400,
          ),
        ),
        Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            Text(
              "EGP ${products.price.toInt()}",
              style: TextStyle(
                overflow: TextOverflow.ellipsis,
                color: Colors.grey[900],
                fontSize: 16,
                fontFamily: 'Urbanist',
                fontWeight: FontWeight.w700,
              ),
              maxLines: 1,
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.only(
                left: 10,
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: customImage(
                  imagePath: products.id % 2 != 0 ? ImagePaths.logo1 : ImagePaths.logo2,
                  height: 20,
                  width: 20,
                  boxFit: BoxFit.fill,
                ),
              ),
            ),
            MouseRegion(
              cursor: SystemMouseCursors.click,
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 8,
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: customImage(
                    imagePath: ImagePaths.plusLogo,
                    height: 20,
                    width: 20,
                    boxFit: BoxFit.fill,
                  ),
                ),
              ),
            ),
          ],
        )
      ],
    ),
  );
}
