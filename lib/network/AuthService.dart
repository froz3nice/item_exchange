import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:garden_pro/Result.dart';

import '../generated/l10n.dart';


class AuthService {
  static bool isLoggedIn() {
    return FirebaseAuth.instance.currentUser != null;
  }

  Future<Result> registration({
    required String email,
    required String password,
  }) async {
    try {
      log("registration start");
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      await login(email: email, password: password);
      return Result.success("success");
    } on FirebaseAuthException catch (e) {
      String? message = "";
      if (e.code == 'weak-password') {
        message = 'The password provided is too weak.';
      } else if (e.code == 'email-already-in-use') {
        message = 'The account already exists for that email.';
      } else {
        message = e.message;
      }
      return Result.error(message);
    } catch (e) {
      return Result.error(S.current.somethingWentWrong);
    }
  }

  Future<Result> signOut() async {
    try {
      await FirebaseAuth.instance.signOut();
      return Result.success("success");
    } on FirebaseAuthException catch (e) {
      log(e.toString());
      return Result.error(GenericError(e));
    }
  }

  Future<Result> login({
    required String email,
    required String password,
  }) async {
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      return Result.success("");
    } on FirebaseAuthException catch (e) {
      String? message = "";
      if (e.code == 'user-not-found') {
        message = 'No user found for that email.';
      } else if (e.code == 'wrong-password') {
        message = 'Wrong password provided for that user.';
      } else {
        message = e.message;
      }
      return Result.error(message);
    } catch (e) {
      return Result.error(S.current.somethingWentWrong);
    }
  }
}
