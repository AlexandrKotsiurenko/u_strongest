import 'package:flutter/material.dart';
import 'package:u_strongest/src/res/ui/pages_links.dart';
import 'package:u_strongest/src/res/ui/text_styles.dart';

class ForgotPasswordButton extends StatelessWidget {
  const ForgotPasswordButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 26),
          child: InkWell(
            onTap: () {
              Navigator.of(context).pushNamed(PagesLinks.forgotPasswordPage);
            },
            child: const Text(
              'Забув пароль?',
              style: AppTextStyles.hintTextColor,
            ),
          ),
        ),
      ],
    );
  }
}
