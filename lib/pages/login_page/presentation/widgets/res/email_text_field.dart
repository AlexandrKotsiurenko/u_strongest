import 'package:flutter/material.dart';
import 'package:u_strongest/src/res/ui/app_colors.dart';
import 'package:u_strongest/src/res/ui/text_styles.dart';

class EmailTextField extends StatelessWidget {
  final TextEditingController emailController;

  const EmailTextField({Key? key, required this.emailController}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 26),
      child: Center(
        child: TextField(
          controller: emailController,
          style: AppTextStyles.regular,
          keyboardType: TextInputType.emailAddress,
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
            hintText: 'Пошта',
            hintStyle: AppTextStyles.hintText,
            filled: true,
            fillColor: AppColors.whiteThemeBGSecondary,
          ),
        ),
      ),
    );
  }
}
