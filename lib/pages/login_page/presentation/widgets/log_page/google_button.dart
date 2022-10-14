import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:u_strongest/blocs/auth_bloc/auth_bloc.dart';
import 'package:u_strongest/blocs/auth_bloc/auth_events.dart';
import 'package:u_strongest/src/res/ui/app_colors.dart';
import 'package:u_strongest/src/res/ui/ui_images_links.dart';

class GoogleButton extends StatelessWidget {
  const GoogleButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(22),
      onTap: () {
        context.read<AuthBloc>().add(
              SignInWithGoogle(),
            );
      },
      child: Container(
        height: 50,
        width: 50,
        decoration: const BoxDecoration(
          color: AppColors.white,
          shape: BoxShape.circle,
        ),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Image.asset(UiImagesLinks.googleIcon),
        ),
      ),
    );
  }
}
