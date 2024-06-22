import 'package:flutter/material.dart';
import 'package:slash_task/core/utils/images_paths.dart';

final TextEditingController controller = TextEditingController();

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      scrollPadding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
      controller: controller,
      // focusNode: focus,
      style: TextStyle(
        color: Colors.grey[500],
        fontSize: 15,
        fontFamily: 'Urbanist',
        fontWeight: FontWeight.w400,
        overflow: TextOverflow.ellipsis,
      ),
      keyboardType: TextInputType.name,
      maxLines: 1,
      decoration: InputDecoration(
        hintText: "search here...",
        hintStyle: TextStyle(
          color: Colors.grey[500],
          fontSize: 14,
          fontFamily: 'Urbanist',
          fontWeight: FontWeight.w400,
        ),
        prefixIcon: Container(
          margin: const EdgeInsets.fromLTRB(18, 12, 12, 12),
          child: Image(
            image: AssetImage(ImagePaths.search),
            height: 20,
            width: 20,
            color: Colors.grey[900],
          ),
        ),
        prefixIconConstraints: const BoxConstraints(
          maxHeight: 44,
        ),
        suffixIcon: Padding(
          padding: const EdgeInsets.only(
            right: 15,
          ),
          child: IconButton(
            onPressed: () => controller.clear(),
            icon: Icon(
              Icons.clear,
              color: Colors.grey.shade600,
            ),
          ),
        ),
        suffixIconConstraints: const BoxConstraints(
          maxHeight: 44,
        ),
        isDense: true,
        contentPadding: const EdgeInsets.only(
          top: 14,
          right: 14,
          bottom: 14,
        ),
        filled: true,
        fillColor: const Color(0X84E4E4E4),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(7),
          borderSide: BorderSide.none,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(7),
          borderSide: BorderSide.none,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(7),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}
