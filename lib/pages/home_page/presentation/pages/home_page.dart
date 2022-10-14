import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:u_strongest/blocs/auth_bloc/auth_bloc.dart';
import 'package:u_strongest/blocs/auth_bloc/auth_events.dart';
import 'package:u_strongest/blocs/exercise_list_bloc/exercise_list_bloc.dart';
import 'package:u_strongest/pages/home_page/presentation/widgets/exercise_block/exercise_block_list.dart';
import 'package:u_strongest/pages/home_page/presentation/widgets/tag_block/tag_block_list.dart';
import 'package:u_strongest/pages/home_page/presentation/widgets/training_programs_block/training_programs_block_list.dart';
import 'package:u_strongest/src/res/ui/app_colors.dart';
import 'package:u_strongest/src/res/ui/text_styles.dart';
import 'package:u_strongest/src/res/widgets/bottom_nav_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return BlocProvider<ExerciseListBloc>(
      create: (context) => ExerciseListBloc(),
      child: Scaffold(
        backgroundColor: AppColors.whiteThemeBG,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 30),

                //AVATAR + LOGOUT BUTTON
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const CircleAvatar(
                      backgroundImage:
                          AssetImage('lib/assets/images/avatar.jpg'),
                      radius: 25,
                    ),
                    InkWell(
                      borderRadius: BorderRadius.circular(20),
                      onTap: () {
                        context.read<AuthBloc>().add(SignOut());
                      },
                      child: Container(
                        width: 50,
                        height: 50,
                        decoration: const BoxDecoration(
                          color: AppColors.lightGrey,
                          shape: BoxShape.circle,
                        ),
                        child: const Icon(
                          Icons.logout,
                          size: 20,
                          color: AppColors.whiteThemeMain,
                        ),
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 30),

                //WELCOME TEXT + DESCRIPTION
                const Text(
                  'Вітаємо!',
                  style: AppTextStyles.title,
                ),
                const Text(
                  'Давайте розпочнемо тренування',
                  style: AppTextStyles.regular,
                ),

                const SizedBox(height: 20),

                //TAG BLOCK LIST
                const TagBlockList(),
                const SizedBox(height: 20),

                //EXERCISES BLOCK LIST
                const ExercisesBlockList(),
                const SizedBox(height: 20),

                //TRAINING PROGRAMS BLOCK LIST
                const Text(
                  'Готові програми',
                  style: AppTextStyles.subtitle,
                ),
                const SizedBox(height: 10),
                const TrainingProgramsBlockList(),
              ],
            ),
          ),
        ),
        bottomNavigationBar: const BottomNavBar(),
      ),
    );
  }
}
