import 'package:firebase_auth/firebase_auth.dart';

class AuthState {
  final UserCredential? user;

  AuthState({this.user});
}
