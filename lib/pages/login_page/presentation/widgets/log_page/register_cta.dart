import 'package:flutter/material.dart';
import 'package:u_strongest/src/res/ui/text_styles.dart';

class RegisterCTA extends StatelessWidget {
  final void Function() onTap;
  const RegisterCTA({Key? key, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          'Ще не з нами?',
          style: AppTextStyles.hintText,
        ),
        const SizedBox(width: 6),
        InkWell(
          onTap: onTap,
          child: const Text(
            'Зареєструйтесь',
            style: AppTextStyles.hintTextColor,
          ),
        ),
      ],
    );
  }
}
