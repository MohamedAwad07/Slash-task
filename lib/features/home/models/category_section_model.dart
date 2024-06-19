import '../../../core/utils/images_paths.dart';

class CategorySection {
  late String imagePath;
  late String label;
  CategorySection({required this.imagePath, required this.label});
}

List<CategorySection> categorySectionList = [
  CategorySection(
    imagePath: ImagePaths.category1,
    label: "Fashion",
  ),
  CategorySection(
    imagePath: ImagePaths.category2,
    label: "Games",
  ),
  CategorySection(
    imagePath: ImagePaths.category3,
    label: "Accessories",
  ),
  CategorySection(
    imagePath: ImagePaths.category4,
    label: "Books",
  ),
 CategorySection(
    imagePath: ImagePaths.category1,
    label: "Fashion",
  ),
  CategorySection(
    imagePath: ImagePaths.category2,
    label: "Games",
  ),
];
