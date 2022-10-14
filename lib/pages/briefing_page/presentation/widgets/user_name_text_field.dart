import 'package:flutter/material.dart';
import 'package:u_strongest/src/res/ui/app_colors.dart';
import 'package:u_strongest/src/res/ui/text_styles.dart';

class UserNameTextField extends StatelessWidget {
  final TextEditingController nameController;

  const UserNameTextField({
    Key? key,
    required this.nameController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 220,
      child: TextField(
        controller: nameController,
        keyboardType: TextInputType.name,
        style: AppTextStyles.regular,
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: AppColors.lightGrey,
              width: 1,
              style: BorderStyle.solid,
            ),
            borderRadius: BorderRadius.circular(12),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(
                color: AppColors.whiteThemeMain,
                width: 1,
                style: BorderStyle.solid),
            borderRadius: BorderRadius.circular(12),
          ),
          border: InputBorder.none,
          hintText: "Ім'я",
          hintStyle: AppTextStyles.hintText,
          filled: true,
          fillColor: AppColors.whiteThemeBGSecondary,
        ),
      ),
    );
  }
}
