import 'package:flutter/material.dart';
import 'package:u_strongest/src/res/ui/text_styles.dart';

class ExercisePage extends StatefulWidget {
  final String title;
  final String description;
  final String image;

  const ExercisePage({
    Key? key,
    required this.title,
    required this.description,
    required this.image,
  }) : super(key: key);

  @override
  State<ExercisePage> createState() => _ExercisePageState();
}

class _ExercisePageState extends State<ExercisePage> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
          height: 400,
          child: Column(
            children: [
              Text(
                widget.title,
                style: AppTextStyles.title,
              ),
              Text(
                widget.description,
                style: AppTextStyles.regular,
              ),
            ],
          ),
    );
  }
}
