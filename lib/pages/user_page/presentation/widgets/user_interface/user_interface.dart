import 'package:flutter/material.dart';
import 'package:u_strongest/pages/user_page/presentation/widgets/user_interface/user_parameters_item.dart';
import 'package:u_strongest/src/res/ui/app_colors.dart';
import 'package:u_strongest/src/res/ui/buttons.dart';
import 'package:u_strongest/src/res/ui/pages_links.dart';
import 'package:u_strongest/src/res/ui/text_styles.dart';
import 'package:u_strongest/src/res/widgets/user/user_model.dart';

class UserInterface extends StatelessWidget {
  final UserModel state;

  const UserInterface({
    Key? key,
    required this.state,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 30),

        //EXIT & SETTINGS BUTTONS
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomExitButton(
                onTap: () {
                  Navigator.of(context).pushNamed(PagesLinks.homePage);
                },
                buttonColor: AppColors.white,
              ),
              const Text(
                'Профіль',
                style: AppTextStyles.regularWhite,
              ),
              InkWell(
                onTap: () {},
                child: const SizedBox(
                  height: 50,
                  width: 50,
                  child: Icon(
                    Icons.settings,
                    size: 30,
                    color: AppColors.white,
                  ),
                ),
              ),
            ],
          ),
        ),

        //USER AVATAR
        CircleAvatar(
          backgroundImage: NetworkImage(state.avatar),
          radius: 60,
        ),

        //USER NAME
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Text(
            state.name + ' ' + state.surname,
            style: AppTextStyles.titleWhite,
          ),
        ),

        //USER PARAMETERS
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              //HEIGHT
              UserParametersItem(
                icon: Icons.height_rounded,
                title: state.height.toString() + ' см',
                //context.read<UserBloc>().state.userModel!.height.toString(),
                description: 'зріст',
              ),

              //WEIGHT
              UserParametersItem(
                icon: Icons.monitor_weight_outlined,
                title: state.currentWeight.toString() + ' кг',
                description: 'вага',
              ),

              //AGE
              UserParametersItem(
                icon: Icons.calendar_month_outlined,
                title: state.gender,
                description: 'вік',
              ),
            ],
          ),
        ),
      ],
    );
  }
}
