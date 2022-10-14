import 'package:flutter/material.dart';
import 'package:u_strongest/src/res/ui/app_colors.dart';
import 'package:u_strongest/src/res/ui/text_styles.dart';

class UserParametersItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final String description;

  const UserParametersItem({
    Key? key,
    required this.icon,
    required this.title,
    required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 50,
          width: 40,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: AppColors.white,
          ),
          child: Icon(
            icon,
            color: AppColors.whiteThemeMain,
            size: 25,
          ),
        ),
        const SizedBox(width: 10),
        Column(
          children: [
            Text(
              title,
              style: AppTextStyles.regularBoldWhite,
            ),
            Text(
              description,
              style: AppTextStyles.hintTextWhite,
            ),
          ],
        )
      ],
    );
  }
}
