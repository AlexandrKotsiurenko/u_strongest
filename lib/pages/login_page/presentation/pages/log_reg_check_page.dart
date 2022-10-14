import 'package:flutter/material.dart';
import 'package:u_strongest/pages/login_page/presentation/pages/login_page.dart';
import 'package:u_strongest/pages/login_page/presentation/pages/register_page.dart';

class LogRegCheckPage extends StatefulWidget {
  const LogRegCheckPage({Key? key}) : super(key: key);

  @override
  State<LogRegCheckPage> createState() => _LogRegCheckPageState();
}

class _LogRegCheckPageState extends State<LogRegCheckPage> {
  bool showLoginPage = true;

  void toggleScreen() {
    setState(() {
      showLoginPage = !showLoginPage;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (showLoginPage) {
      return LoginPage(showRegisterPage: toggleScreen);
    } else {
      return RegisterPage(showLoginPage: toggleScreen);
    }
  }
}
