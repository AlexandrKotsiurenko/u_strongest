import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:u_strongest/blocs/auth_bloc/auth_bloc.dart';
import 'package:u_strongest/blocs/auth_bloc/auth_events.dart';
import 'package:u_strongest/pages/login_page/presentation/widgets/res/email_text_field.dart';
import 'package:u_strongest/src/res/ui/app_colors.dart';
import 'package:u_strongest/src/res/ui/buttons.dart';
import 'package:u_strongest/src/res/ui/pages_links.dart';
import 'package:u_strongest/src/res/ui/text_styles.dart';

class ForgotPasswordPage extends StatefulWidget {
  const ForgotPasswordPage({Key? key}) : super(key: key);

  @override
  State<ForgotPasswordPage> createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {
  final TextEditingController _emailController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    super.dispose();
  }

  Future passwordReset() async {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.whiteThemeMain,
        elevation: 0,
      ),
      body: Column(
        children: [
          const SizedBox(height: 50),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 26),
            child: Text(
              'Введіть свій Email і ми відправимо\nВам посилання для зміни пароля',
              style: AppTextStyles.regular,
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(height: 10),
          EmailTextField(
            emailController: _emailController,
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 26),
                child: CustomAssistantButton(
                  buttonText: 'Запросити',
                  buttonHeight: 40,
                  buttonWidth: 100,
                  onTap: () async {
                    try {
                      context.read<AuthBloc>().add(
                            ResetPassword(
                              email: _emailController.text.trim(),
                            ),
                          );
                      showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                          content: SizedBox(
                            height: 100,
                            width: 400,
                            child: Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Text(
                                    'Посилання для відновлення відправлено! Перевірте Ваш Email',
                                    style: AppTextStyles.hintText,
                                    textAlign: TextAlign.center,
                                  ),
                                  const SizedBox(height: 10),
                                  CustomAssistantButton(
                                    buttonText: 'На головну',
                                    buttonHeight: 40,
                                    buttonWidth: 100,
                                    onTap: () {
                                      Navigator.of(context)
                                          .pushNamed(PagesLinks.loginPage);
                                    },
                                    buttonColor: AppColors.whiteThemeMain,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      );
                    } on FirebaseAuthException catch (e) {
                      showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                          content: SizedBox(
                            height: 100,
                            width: 400,
                            child: Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const [
                                  Text(
                                    'Помилка!',
                                    style: AppTextStyles.alertText,
                                  ),
                                  SizedBox(height: 6),
                                  Text(
                                    'Цей Email не знайден в нашій базі.\nПеревірте чи правильно ви заповнили',
                                    style: AppTextStyles.hintText,
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      );
                    }
                  },
                  buttonColor: AppColors.whiteThemeMain,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
