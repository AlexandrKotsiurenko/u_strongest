import 'package:flutter/material.dart';
import 'package:u_strongest/src/res/ui/app_colors.dart';
import 'package:u_strongest/src/res/ui/text_styles.dart';

class ExerciseBlock extends StatefulWidget {
  final String title;
  final String imageLink;
  final void Function() onTap;

  const ExerciseBlock({
    Key? key,
    required this.title,
    required this.onTap,
    required this.imageLink,
  }) : super(key: key);

  @override
  State<ExerciseBlock> createState() => _ExerciseBlockState();
}

class _ExerciseBlockState extends State<ExerciseBlock> {
  final double width = 300;
  final double height = 200;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onTap,
      child: Padding(
        padding: const EdgeInsets.only(right: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Container(
                width: width,
                height: height,
                decoration: const BoxDecoration(
                  color: AppColors.whiteThemeMain,
                ),
                child: Image.asset(
                  widget.imageLink,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(height: 6),
            Text(
              widget.title,
              style: AppTextStyles.regularBold,
            ),
          ],
        ),
      ),
    );
  }
}
