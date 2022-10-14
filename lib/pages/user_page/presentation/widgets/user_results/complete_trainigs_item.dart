import 'package:flutter/material.dart';
import 'package:u_strongest/src/res/ui/text_styles.dart';

class CompleteTrainingsItem extends StatelessWidget {
  final int trainingsAmount;
  final String description;

  const CompleteTrainingsItem(
      {Key? key, required this.trainingsAmount, required this.description,})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children:[
        Text(
          trainingsAmount.toString(),
          style: AppTextStyles.title,
          textAlign: TextAlign.left,
        ),
        Text(
          description,
          style: AppTextStyles.hintTextMini,
        ),
      ],
    );
  }
}
