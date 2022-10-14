import 'package:flutter/material.dart';
import 'package:u_strongest/src/res/ui/app_colors.dart';

class AppTextStyles {
  static const regular = TextStyle(
    fontSize: 13,
    fontFamily: 'Gilroy',
  );

  static const regularBold = TextStyle(
    fontSize: 13,
    fontFamily: 'Gilroy',
    fontWeight: FontWeight.bold,
  );

  static const regularWhite = TextStyle(
    fontSize: 13,
    fontFamily: 'Gilroy',
    color: AppColors.white,
  );

  static const regularBoldWhite = TextStyle(
    fontSize: 13,
    fontFamily: 'Gilroy',
    fontWeight: FontWeight.bold,
    color: AppColors.white,
  );

  static const title = TextStyle(
    fontSize: 20,
    fontFamily: 'Gilroy',
    fontWeight: FontWeight.bold,
  );

  static const titleWhite = TextStyle(
    fontSize: 20,
    fontFamily: 'Gilroy',
    fontWeight: FontWeight.bold,
    color: AppColors.white,
  );

  static const subtitle = TextStyle(
    fontSize: 16,
    fontFamily: 'Gilroy',
    fontWeight: FontWeight.bold,
  );

  static const buttonText = TextStyle(
    fontSize: 16,
    fontFamily: 'Gilroy',
    fontWeight: FontWeight.bold,
    color: AppColors.white,
  );

  static const hintText = TextStyle(
    fontSize: 11,
    fontFamily: 'Gilroy',
  );

  static const hintTextWhite = TextStyle(
    fontSize: 11,
    fontFamily: 'Gilroy',
    color: AppColors.white,
  );

  static const hintTextMini = TextStyle(
    fontSize: 9,
    fontFamily: 'Gilroy',
  );

  static const hintTextColor = TextStyle(
    fontSize: 11,
    fontFamily: 'Gilroy',
    color: AppColors.whiteThemeMain,
    fontWeight: FontWeight.w500,
  );

  static const alertText = TextStyle(
      fontSize: 15,
      fontFamily: 'Gilroy',
      fontWeight: FontWeight.bold,
      color: Colors.red);

  static const assistantButtonText = TextStyle(
    fontSize: 11,
    fontFamily: 'Gilroy',
    fontWeight: FontWeight.bold,
    color: AppColors.white,
  );

  static const kGActiveText = TextStyle(
    fontSize: 50,
    fontFamily: 'Gilroy',
    color: AppColors.whiteThemeMain,
    fontWeight: FontWeight.bold,
  );

  static const TextStyle kGInactiveText = TextStyle(
      fontSize: 35,
      fontFamily: 'Gilroy',
      color: AppColors.lightGrey,
      fontWeight: FontWeight.normal);

  static const kGIndexText = TextStyle(
    fontSize: 12,
    fontFamily: 'Gilroy',
    color: AppColors.whiteThemeMain,
    fontWeight: FontWeight.bold,
  );
}
