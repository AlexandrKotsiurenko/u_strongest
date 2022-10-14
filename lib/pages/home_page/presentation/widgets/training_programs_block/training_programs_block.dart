import 'package:flutter/material.dart';
import 'package:u_strongest/src/res/ui/app_colors.dart';
import 'package:u_strongest/src/res/ui/text_styles.dart';

class TrainingProgramsBlock extends StatefulWidget {
  final String title;
  final String imageLink;
  final void Function() onTap;

  const TrainingProgramsBlock({
    Key? key,
    required this.title,
    required this.onTap,
    required this.imageLink,
  }) : super(key: key);

  @override
  State<TrainingProgramsBlock> createState() => _TrainingProgramsBlockState();
}

class _TrainingProgramsBlockState extends State<TrainingProgramsBlock> {
  final double width = 250;
  final double height = 300;

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
