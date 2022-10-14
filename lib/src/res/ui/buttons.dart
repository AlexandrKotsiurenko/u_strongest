import 'package:flutter/material.dart';
import 'package:u_strongest/src/res/ui/app_colors.dart';
import 'package:u_strongest/src/res/ui/text_styles.dart';

class CustomAssistantButton extends StatelessWidget {
  final String buttonText;
  final double buttonHeight;
  final double buttonWidth;
  final void Function() onTap;
  final Color buttonColor;

  const CustomAssistantButton({
    Key? key,
    required this.buttonText,
    required this.buttonHeight,
    required this.buttonWidth,
    required this.onTap,
    required this.buttonColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: buttonWidth,
        height: buttonHeight,
        decoration: BoxDecoration(
          color: buttonColor,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(
          child: Text(
            buttonText,
            style: AppTextStyles.assistantButtonText,
          ),
        ),
      ),
    );
  }
}

class CustomExitButton extends StatelessWidget {
  final void Function() onTap;
  final Color buttonColor;

  const CustomExitButton({
    Key? key,
    required this.onTap,
    required this.buttonColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: 40,
        height: 40,
        decoration: BoxDecoration(
          color: buttonColor,
          borderRadius: BorderRadius.circular(8),
        ),
        child: const Center(
          child: Icon(
            Icons.arrow_back_ios_new,
            size: 20,
            color: AppColors.black,
          ),
        ),
      ),
    );
  }
}

class CustomMainButton extends StatelessWidget {
  final void Function() onTap;
  final String buttonText;

  const CustomMainButton(
      {Key? key, required this.onTap, required this.buttonText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(12),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Container(
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: AppColors.whiteThemeMain,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Center(
            child: Text(
              buttonText,
              style: AppTextStyles.buttonText,
            ),
          ),
        ),
      ),
    );
  }
}

class CustomOutlinedButton extends StatelessWidget {
  final void Function() onTap;
  final String buttonText;
  final bool isSelected;
  final double height;
  final double width;

  const CustomOutlinedButton({
    Key? key,
    required this.onTap,
    required this.buttonText,
    required this.isSelected,
    required this.height,
    required this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(12),
      onTap: onTap,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: AppColors.whiteThemeMain),
          color: isSelected ? AppColors.whiteThemeMain : AppColors.white,
        ),
        child: Center(
          child: Text(
            buttonText,
            style:
                isSelected ? AppTextStyles.regularWhite : AppTextStyles.regular,
          ),
        ),
      ),
    );
  }
}
