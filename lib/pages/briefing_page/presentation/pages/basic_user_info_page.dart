import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:u_strongest/blocs/user_info_bloc/user_info_bloc.dart';
import 'package:u_strongest/blocs/user_info_bloc/user_info_events.dart';
import 'package:u_strongest/blocs/user_info_bloc/user_info_state.dart';
import 'package:u_strongest/pages/briefing_page/presentation/widgets/age_picker.dart';
import 'package:u_strongest/pages/briefing_page/presentation/widgets/avatar_picker.dart';
import 'package:u_strongest/pages/briefing_page/presentation/widgets/basic_info_description.dart';
import 'package:u_strongest/pages/briefing_page/presentation/widgets/gender_picker.dart';
import 'package:u_strongest/pages/briefing_page/presentation/widgets/user_name_text_field.dart';
import 'package:u_strongest/pages/briefing_page/presentation/widgets/user_surname_text_field.dart';
import 'package:u_strongest/src/res/ui/buttons.dart';

class BasicUserInfoPage extends StatefulWidget {
  final PageController pageController;

  const BasicUserInfoPage({
    Key? key,
    required this.pageController,
  }) : super(key: key);

  @override
  State<BasicUserInfoPage> createState() => _BasicUserInfoPageState();
}

class _BasicUserInfoPageState extends State<BasicUserInfoPage> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController surnameController = TextEditingController();

  String? gender;
  File? image;
  DateTime? userBirthday;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserBloc, UserState>(
      builder: (context, state) => Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //DESCRIPTION
                      const BasicInfoDescription(),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          //AVATAR PICKER
                          AvatarPicker(
                            onImageChanged: (File value) {
                              image = value;
                            },
                          ),

                          //NAME & SURNAME TEXT FIELDS
                          Column(
                            children: [
                              UserNameTextField(
                                nameController: nameController,
                              ),
                              const SizedBox(height: 10),
                              UserSurnameTextField(
                                surnameController: surnameController,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),

                  //GENDER & AGE PICKERS
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      //USER GENDER
                      GenderPicker(
                        onGenderChanged: (String value) {
                          gender = value;
                        },
                      ),

                      //USER AGE
                      AgePicker(
                        userBirthday: userBirthday,
                        datePicker: (value) {
                          setState(
                            () {
                              userBirthday = value;
                            },
                          );
                        },
                      ),
                    ],
                  ),
                  const SizedBox(height: 30),
                ],
              ),
            ),
            CustomMainButton(
              onTap: () {
                context.read<UserBloc>().add(
                      SetBasicUserInfoEvent(
                        name: nameController.text,
                        surname: surnameController.text,
                        age: userBirthday!.compareTo(
                          DateTime(userBirthday!.year, userBirthday!.month,
                              userBirthday!.day),
                        ),
                        avatar: image,
                        gender: gender,
                      ),
                    );
                widget.pageController.nextPage(
                  duration: const Duration(milliseconds: 600),
                  curve: Curves.linear,
                );
              },
              buttonText: 'Підтвердити',
            ),
          ],
        ),
      ),
    );
  }
}
