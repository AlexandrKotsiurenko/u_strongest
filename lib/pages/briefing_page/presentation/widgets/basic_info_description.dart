import 'package:flutter/material.dart';
import 'package:u_strongest/src/res/ui/text_styles.dart';

class BasicInfoDescription extends StatelessWidget {
  const BasicInfoDescription({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        Text(
          'Заповніть базову інформацію про себе',
          style: AppTextStyles.title,
        ),
        SizedBox(height: 10),
        Text(
          'Це допоможе нам ефективніше взаємодіяти',
          style: AppTextStyles.regular,
        ),
        SizedBox(height: 30),
      ],
    );
  }
}
