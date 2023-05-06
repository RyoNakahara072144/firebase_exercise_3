import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_exercise_3/pages/sign_in_success.dart';
import 'package:firebase_exercise_3/pages/sign_up.dart';
import 'package:firebase_exercise_3/services/firebase_auth_service.dart';
import 'package:flutter/material.dart';
import 'package:firebase_exercise_3/constants/text_styles.dart';

class AuthExercise extends StatefulWidget {
  const AuthExercise({Key? key}) : super(key: key);

  @override
  State<AuthExercise> createState() => _AuthExerciseState();
}

class _AuthExerciseState extends State<AuthExercise> {
  bool _isSignedIn = false;
  String userId = '';

  void checkSignInState(){
    FirebaseAuthService()
        .authStateChanges()
        .listen((User? user) {
      if (user == null) {
        setState(() {
          _isSignedIn = false;
        });
      } else {
        userId = user.uid;//ユーザーIdの取得
        setState(() {
          _isSignedIn = true;
        });
      }
    });
  }

  @override
  void initState() {
    super.initState();

    checkSignInState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      ),
      body: _isSignedIn?Home(userId: userId):const SignUp(),
    );
  }
}


