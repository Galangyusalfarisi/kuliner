import 'package:ekuliner/Screens/Welcome/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:ekuliner/Screens/Signup/signup_screen.dart';
import 'package:ekuliner/Screens/Welcome/components/background.dart';
import 'package:ekuliner/components/rounded_button.dart';
import 'package:ekuliner/constants.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // This size provide us total height and width of our screen
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "SELAMAT DATANG DI APLIKASI E-KULINER",
              style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
            ),
            SizedBox(height: 10.0),
            Text(
              "Cari kuliner asli nusantara kapanpun dan dimanapun",
              style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),
            ),
            SizedBox(height: size.height * 0.05),
            Image.asset(
              "assets/images/welcomepage.png",
              height: size.height * 0.45,
            ),
            SizedBox(height: 20.0),
            RoundedButton(
              text: "MASUK",
              color: kprimary,
              textColor: Colors.black,
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return MainScreen();
                    },
                  ),
                );
              },
            ),
            RoundedButton(
              text: "DAFTAR",
              color: kprimary,
              textColor: Colors.black,
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return SignUpScreen();
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
