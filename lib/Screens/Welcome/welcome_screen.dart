import 'package:ekuliner/Screens/Login/login_screen.dart';
import 'package:ekuliner/Screens/home/home_screen.dart';
import 'package:ekuliner/constants.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:ekuliner/Screens/Welcome/components/body.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: Body(),
    );
  }
}

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<User>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if (snapshot.hasData && snapshot.data != null){
            return HomeScreen();
          }
          return LoginScreen();
        }
    );
  }
}
