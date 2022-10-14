import 'package:flutter/material.dart';
import 'package:u_strongest/src/res/ui/app_colors.dart';
import 'package:u_strongest/src/res/ui/text_styles.dart';

class PasswordTextField extends StatefulWidget {
  final TextEditingController passwordController;
  final String hintText;
  const PasswordTextField({Key? key, required this.passwordController, required this.hintText}) : super(key: key);

  @override
  State<PasswordTextField> createState() => _PasswordTextFieldState();
}

class _PasswordTextFieldState extends State<PasswordTextField> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 26),
      child: Center(
        child: TextField(
          controller: widget.passwordController,
          style: AppTextStyles.regular,
          keyboardType: TextInputType.emailAddress,
          obscureText: _obscureText,
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
            hintText: widget.hintText,
            hintStyle: AppTextStyles.hintText,
            filled: true,
            fillColor: AppColors.whiteThemeBGSecondary,
            suffixIcon: InkWell(
              onTap: () {
                setState(
                  () {
                    _obscureText = !_obscureText;
                  },
                );
              },
              child: Icon(
                _obscureText ? Icons.visibility : Icons.visibility_off,
                size: 20,
                color: AppColors.whiteThemeMain,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
