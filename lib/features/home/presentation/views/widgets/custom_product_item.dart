import 'package:flutter/material.dart';

import '../../../../../core/utils/images_paths.dart';
import '../../../data/models/dummy data models/dummyDataModel.dart';

Widget productItem(Product products) {
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
                    child: Image(
                      image: AssetImage(products.image),
                      height: 116,
                      width: double.maxFinite,
                    ),
                  ),
                  IconButton(
                    iconSize: 26,
                    alignment: Alignment.topRight,
                    onPressed: () {},
                    icon: Image(
                      image: AssetImage(ImagePaths.loveLogo),
                      height: 26,
                      width: 26,
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
        const SizedBox(height: 5),
        Text(
          products.name,
          style: TextStyle(
            color: Colors.grey[900],
            fontSize: 16,
            fontFamily: 'Urbanist',
            fontWeight: FontWeight.w400,
          ),
        ),
        SizedBox(
          //height: 24,
          width: double.maxFinite,
          child: Row(
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
                  child: Image(
                    image: AssetImage(products.id % 2 != 0 ? ImagePaths.logo1 : ImagePaths.logo2),
                    height: 20,
                    width: 20,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 1,
                ),
                child: IconButton(
                  iconSize: 25,
                  onPressed: () {},
                  icon: Image(
                    fit: BoxFit.fill,
                    image: AssetImage(ImagePaths.plusLogo),
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    ),
  );
}
