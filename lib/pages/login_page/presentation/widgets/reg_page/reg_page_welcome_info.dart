import 'package:flutter/material.dart';
import 'package:u_strongest/src/res/ui/text_styles.dart';

class RegPageWelcomeInfo extends StatelessWidget {
  const RegPageWelcomeInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        SizedBox(height: 60),
        Text('uSTRONGEST', style: AppTextStyles.title),
        SizedBox(height: 10),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 26),
          child: Text(
            'Реєструйся і починай тренування',
            style: AppTextStyles.regular,
            textAlign: TextAlign.center,
          ),
        ),
        SizedBox(height: 20),
      ],
    );
  }
}
