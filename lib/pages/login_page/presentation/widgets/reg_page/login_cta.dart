import 'package:flutter/material.dart';
import 'package:u_strongest/src/res/ui/text_styles.dart';

class LoginCTA extends StatelessWidget {
  final void Function() onTap;
  const LoginCTA({Key? key, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          'Вже з нами?',
          style: AppTextStyles.hintText,
        ),
        const SizedBox(width: 6),
        InkWell(
          onTap: onTap,
          child: const Text(
            'Авторизуйся!',
            style: AppTextStyles.hintTextColor,
          ),
        ),
      ],
    );
  }
}
