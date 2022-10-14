import 'package:flutter/material.dart';
import 'package:u_strongest/src/res/ui/text_styles.dart';
import 'package:u_strongest/src/res/ui/ui_images_links.dart';

class LogPageWelcomeInfo extends StatelessWidget {
  const LogPageWelcomeInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //WELCOME PHOTO
        Image.asset(
          UiImagesLinks.loginPageBG,
          fit: BoxFit.cover,
          width: 600,
          height: 200,
        ),
        const SizedBox(height: 40),

        //WELCOME TEXT
        const Text(
          'uSTRONGEST',
          style: AppTextStyles.title,
        ),
        const SizedBox(height: 10),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 26),
          child: Text(
            'Ми допоможемо тобі зробити\nсвоє тіло красивішим та сильнішим',
            style: AppTextStyles.regular,
            textAlign: TextAlign.center,
          ),
        ),
        const SizedBox(height: 20),
      ],
    );
  }
}
