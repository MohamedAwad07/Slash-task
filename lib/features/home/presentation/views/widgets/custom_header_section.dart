import 'package:flutter/material.dart';
import '../../../../../core/utils/images_paths.dart';

Widget buildSectionsHeader({required String headerName,  double? padding}) {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: padding ?? 0),
    child: SizedBox(
      width: double.maxFinite,
      child: Align(
        alignment: Alignment.topCenter,
        child: Padding(
          padding: const EdgeInsets.only(
            left: 24,
            right: 24,
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              Text(
                headerName,
                style: TextStyle(
                  color: Colors.grey[900],
                  fontSize: 20,
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
              IconButton(
                iconSize: 20,
                onPressed: () {},
                icon: Image(
                  image: AssetImage(ImagePaths.seeAllButton),
                ),
              )
            ],
          ),
        ),
      ),
    ),
  );
}
