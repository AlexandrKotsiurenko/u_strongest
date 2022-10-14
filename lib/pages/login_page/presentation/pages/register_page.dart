import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:u_strongest/blocs/auth_bloc/auth_bloc.dart';
import 'package:u_strongest/blocs/auth_bloc/auth_events.dart';
import 'package:u_strongest/pages/login_page/presentation/widgets/reg_page/login_cta.dart';
import 'package:u_strongest/pages/login_page/presentation/widgets/reg_page/reg_page_welcome_info.dart';
import 'package:u_strongest/pages/login_page/presentation/widgets/res/email_text_field.dart';
import 'package:u_strongest/pages/login_page/presentation/widgets/res/password_text_field.dart';
import 'package:u_strongest/src/res/ui/app_colors.dart';
import 'package:u_strongest/src/res/ui/buttons.dart';
import 'package:u_strongest/src/res/ui/pages_links.dart';
import 'package:u_strongest/src/res/ui/text_styles.dart';

class RegisterPage extends StatefulWidget {
  final VoidCallback showLoginPage;

  const RegisterPage({Key? key, required this.showLoginPage}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _passwordConfirmController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    _passwordConfirmController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteThemeBG,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const RegPageWelcomeInfo(),

            //EMAIL TEXT FIELD
            EmailTextField(
              emailController: _emailController,
            ),

            const SizedBox(height: 10),

            //PASSWORD TEXT FIELD
            PasswordTextField(
              passwordController: _passwordController,
              hintText: 'Пароль',
            ),

            const SizedBox(height: 10),

            //CONFIRM PASSWORD TEXT FIELD
            PasswordTextField(
              passwordController: _passwordConfirmController,
              hintText: 'Підвердіть пароль',
            ),

            const SizedBox(height: 20),

            //LINE DIVIDER
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 26),
              child: Container(
                height: 1,
                color: AppColors.lightGrey,
              ),
            ),

            const SizedBox(height: 50),

            //SIGN UP BUTTON
            CustomMainButton(
              onTap: () {
                if (_passwordController.text.trim() ==
                    _passwordConfirmController.text.trim()) {
                  context.read<AuthBloc>().add(
                        SignUp(
                          email: _emailController.text.trim(),
                          password: _passwordController.text.trim(),
                        ),
                      );
                  Navigator.of(context).pushReplacementNamed(PagesLinks.briefingPage);
                } else {
                  showDialog(
                    context: context,
                    builder: (_) => const AlertDialog(
                      elevation: 24,
                      title: Text(
                        'Помилка!',
                        style: AppTextStyles.alertText,
                        textAlign: TextAlign.center,
                      ),
                      content: Text(
                        'Паролі не співпадають',
                        style: AppTextStyles.regular,
                        textAlign: TextAlign.center,
                      ),
                    ),
                  );
                }
              },
              buttonText: 'Зареєструватись',
            ),

            const SizedBox(height: 16),

            //LOGIN CTA
            LoginCTA(onTap: widget.showLoginPage),
          ],
        ),
      ),
    );
  }
}
