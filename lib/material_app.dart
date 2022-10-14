import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:u_strongest/blocs/auth_bloc/auth_bloc.dart';
import 'package:u_strongest/blocs/auth_bloc/auth_state.dart';
import 'package:u_strongest/blocs/user_info_bloc/user_info_bloc.dart';
import 'package:u_strongest/blocs/user_info_bloc/user_info_state.dart';
import 'package:u_strongest/pages/briefing_page/presentation/pages/briefing_page.dart';
import 'package:u_strongest/pages/home_page/presentation/pages/home_page.dart';
import 'package:u_strongest/pages/login_page/presentation/pages/auth_check_page.dart';
import 'package:u_strongest/pages/login_page/presentation/pages/forgot_password_page.dart';
import 'package:u_strongest/pages/login_page/presentation/pages/login_page.dart';
import 'package:u_strongest/pages/training_page/presentation/pages/training_page.dart';
import 'package:u_strongest/pages/user_page/presentation/pages/user_page.dart';
import 'package:u_strongest/src/res/ui/pages_links.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<AuthBloc>(
          create: (BuildContext context) => AuthBloc(
            AuthState(),
          ),
        ),
        BlocProvider<UserBloc>(
          create: (BuildContext context) => UserBloc(
            UserState(),
          ),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.indigo,
        ),
        routes: {
          PagesLinks.authCheckPage: (context) => const AuthCheckPage(),
          PagesLinks.homePage: (context) => const HomePage(),
          PagesLinks.userPage: (context) => const UserPage(),
          PagesLinks.trainingPage: (context) => const TrainingPage(),
          PagesLinks.briefingPage: (context) => const BriefingPage(),
          PagesLinks.forgotPasswordPage: (context) =>
              const ForgotPasswordPage(),
          PagesLinks.loginPage: (context) => LoginPage(showRegisterPage: () {}),
        },
        home: const AuthCheckPage(),
      ),
    );
  }
}
