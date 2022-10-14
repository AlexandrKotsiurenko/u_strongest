import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:u_strongest/blocs/auth_bloc/auth_bloc.dart';
import 'package:u_strongest/blocs/auth_bloc/auth_events.dart';
import 'package:u_strongest/pages/login_page/presentation/widgets/res/email_text_field.dart';
import 'package:u_strongest/pages/login_page/presentation/widgets/log_page/google_button.dart';
import 'package:u_strongest/pages/login_page/presentation/widgets/log_page/forgot_password_button.dart';
import 'package:u_strongest/pages/login_page/presentation/widgets/log_page/log_page_welcome_info.dart';
import 'package:u_strongest/pages/login_page/presentation/widgets/res/password_text_field.dart';
import 'package:u_strongest/pages/login_page/presentation/widgets/log_page/register_cta.dart';
import 'package:u_strongest/src/res/ui/app_colors.dart';
import 'package:u_strongest/src/res/ui/buttons.dart';

class LoginPage extends StatefulWidget {
  final VoidCallback showRegisterPage;

  const LoginPage({
    Key? key,
    required this.showRegisterPage,
  }) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteThemeBG,
      body: SingleChildScrollView(
        child: Column(
          children: [
            //WELCOME IMAGE + TEXT
            const LogPageWelcomeInfo(),

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

            //FORGOT PASSWORD?
            const ForgotPasswordButton(),

            const SizedBox(height: 20),

            //SIGN IN BUTTON
            CustomMainButton(
              onTap: () {
                context.read<AuthBloc>().add(
                      SignIn(
                        email: _emailController.text.trim(),
                        password: _passwordController.text.trim(),
                      ),
                    );
              },
              buttonText: 'Увійти',
            ),

            const SizedBox(height: 20),

            //REGISTRATION CALL TO ACTION
            RegisterCTA(onTap: widget.showRegisterPage),

            const SizedBox(height: 30),

            //GOOGLE BUTTON
            const GoogleButton(),
          ],
        ),
      ),
    );
  }
}
