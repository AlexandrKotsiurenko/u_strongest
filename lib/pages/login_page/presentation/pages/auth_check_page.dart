import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:u_strongest/pages/home_page/presentation/pages/home_page.dart';
import 'package:u_strongest/pages/login_page/presentation/pages/log_reg_check_page.dart';

class AuthCheckPage extends StatelessWidget {
  const AuthCheckPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return const HomePage();
          } else {
            return const LogRegCheckPage();
          }
        },
      ),
    );
  }
}
