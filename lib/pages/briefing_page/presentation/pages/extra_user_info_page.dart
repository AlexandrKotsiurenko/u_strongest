import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:u_strongest/blocs/auth_bloc/auth_bloc.dart';
import 'package:u_strongest/blocs/auth_bloc/auth_state.dart';
import 'package:u_strongest/blocs/user_info_bloc/user_info_bloc.dart';
import 'package:u_strongest/blocs/user_info_bloc/user_info_events.dart';
import 'package:u_strongest/pages/login_page/presentation/widgets/user_height/user_height_picker_widget.dart';
import 'package:u_strongest/pages/login_page/presentation/widgets/user_weigh/user_weigh_picker_widget.dart';
import 'package:u_strongest/src/res/ui/app_colors.dart';
import 'package:u_strongest/src/res/ui/buttons.dart';
import 'package:u_strongest/src/res/ui/pages_links.dart';
import 'package:u_strongest/src/res/ui/text_styles.dart';

class ExtraUserInfoPage extends StatefulWidget {
  final PageController pageController;

  const ExtraUserInfoPage({
    Key? key,
    required this.pageController,
  }) : super(key: key);

  @override
  State<ExtraUserInfoPage> createState() => _ExtraUserInfoPageState();
}

class _ExtraUserInfoPageState extends State<ExtraUserInfoPage> {
  int? height;
  double? weight;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //DESCRIPTION
                const SizedBox(height: 30),
                const Text(
                  'Заповніть додаткову інформацію про себе',
                  style: AppTextStyles.title,
                ),
                const SizedBox(height: 10),
                const Text(
                  'Це допоможе нам ефективніше взаємодіяти',
                  style: AppTextStyles.regular,
                ),
                const SizedBox(height: 30),

                //HOW MANY TRAININGS PER WEEK
                InkWell(
                  onTap: () {
                    showModalBottomSheet(
                      isScrollControlled: true,
                      context: context,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.vertical(
                          top: Radius.circular(20),
                        ),
                      ),
                      builder: (context) => SizedBox(
                        height: 260,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const SizedBox(height: 30),
                            CustomOutlinedButton(
                              onTap: () {},
                              buttonText: '1-2',
                              isSelected: false,
                              height: 60,
                              width: 100,
                            ),
                            CustomOutlinedButton(
                              onTap: () {},
                              buttonText: '3-4',
                              isSelected: false,
                              height: 60,
                              width: 100,
                            ),
                            CustomOutlinedButton(
                              onTap: () {},
                              buttonText: '5+',
                              isSelected: false,
                              height: 60,
                              width: 100,
                            ),
                            const SizedBox(height: 30),
                          ],
                        ),
                      ),
                    );
                  },
                  borderRadius: BorderRadius.circular(12),
                  child: Container(
                    height: 60,
                    decoration: BoxDecoration(
                      color: AppColors.whiteThemeBGSecondary,
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(
                        color: AppColors.lightGrey,
                        width: 1.0,
                      ),
                    ),
                    child: const Center(
                      child: Padding(
                        padding: EdgeInsets.all(10),
                        child: Text(
                          'Скільки тренувань на тиждень ви плануєте?',
                          style: AppTextStyles.hintText,
                        ),
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 10),

                //USER`S HEIGHT & WEIGHT BRIEFING
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    UserWeightPicker(
                      onWeightChanged: (int value) {
                        weight = value.toDouble();
                      },
                    ),
                    UserHeightPicker(
                      onHeightChanged: (int value) {
                        height = value;
                      },
                    ),
                  ],
                ),
                const SizedBox(height: 70),
              ],
            ),
          ),
          BlocBuilder<AuthBloc, AuthState>(
            builder: (context, state) => CustomMainButton(
              onTap: () {
                context.read<UserBloc>().add(
                      SetExtraUserInfoEvent(
                        currentWeight: weight!,
                        trainingsCounter: 0,
                        height: height!.toDouble(),
                        startedWeight: weight!,
                        uId: state.user!.user!.uid,
                      ),
                    );
                Navigator.of(context).pushReplacementNamed(PagesLinks.homePage);
              },
              buttonText: 'Підтвердити',
            ),
          ),
        ],
      ),
    );
  }
}
