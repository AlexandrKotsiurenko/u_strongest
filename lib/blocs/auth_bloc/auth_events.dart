abstract class AuthEvents {}

class SignIn extends AuthEvents {
  final String email;
  final String password;

  SignIn({
    required this.email,
    required this.password,
  });
}

class SignInWithGoogle extends AuthEvents {}

class SignUp extends AuthEvents {
  final String email;
  final String password;

  SignUp({
    required this.email,
    required this.password,
  });
}

class SignOut extends AuthEvents {}

class ResetPassword extends AuthEvents {
  final String email;

  ResetPassword({required this.email});
}
