import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:u_strongest/blocs/auth_bloc/auth_events.dart';
import 'package:u_strongest/blocs/auth_bloc/auth_state.dart';

class AuthBloc extends Bloc<AuthEvents, AuthState> {
  AuthBloc(AuthState initialState) : super(initialState) {
    on<SignIn>((event, emit) async {
      final user = await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: event.email,
        password: event.password,
      );
      emit(AuthState(user: user));
    });

    on<SignInWithGoogle>((event, emit) async {
      final GoogleSignInAccount? googleUser =
          await GoogleSignIn(scopes: ["email"]).signIn();

      final GoogleSignInAuthentication googleAuth =
          await googleUser!.authentication;

      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );

      final user = await FirebaseAuth.instance.signInWithCredential(credential);
      emit(AuthState(user: user));
    });

    on<SignUp>((event, emit) async {
      final user = await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: event.email,
        password: event.password,
      );
      FirebaseFirestore.instance
          .collection('Users')
          .doc(user.user!.uid)
          .set({});
      emit(AuthState(user: user));
    });

    on<SignOut>((event, emit) => {FirebaseAuth.instance.signOut()});

    on<ResetPassword>((event, emit) async {
      await FirebaseAuth.instance.sendPasswordResetEmail(
        email: event.email,
      );
    });
  }
}
