import 'package:ekuliner/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ekuliner/Screens/Login/login_screen.dart';
import 'package:ekuliner/Screens/Signup/components/background.dart';
import 'package:ekuliner/Screens/Signup/components/or_divider.dart';
import 'package:ekuliner/Screens/Signup/components/social_icon.dart';
import 'package:ekuliner/components/already_have_an_account_acheck.dart';
import 'package:ekuliner/components/rounded_button.dart';
import 'package:ekuliner/components/rounded_input_field.dart';
import 'package:ekuliner/components/rounded_password_field.dart';


class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: 20),
            Text(
              "DAFTAR AKUN",
              textAlign: TextAlign.center,
              style: TextStyle(color: kPrimaryColor, fontWeight: FontWeight.bold, fontSize: 24),
            ),
            SizedBox(height: size.height * 0.03),
            RoundedInputField(
              hintText: "Nama",
              icon: Icons.person,
              onChanged: (value) {},
            ),
            RoundedInputField(
              hintText: "No. Telepon",
              icon: Icons.call,
              onChanged: (value) {},
            ),
            RoundedInputField(
              hintText: "E-mail",
              icon: Icons.mail,
              onChanged: (value) {},
            ),
            RoundedPasswordField(
              onChanged: (value) {},
            ),
            RoundedInputField(
              hintText: "Domisili",
              icon: Icons.location_on_rounded,
              onChanged: (value) {},
            ),
            RoundedButton(
              text: "Daftar",
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return LoginScreen();
                  },
                ),
              );},
            ),
            SizedBox(height: size.height * 0.02),
            AlreadyHaveAnAccountCheck(
              login: false,
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return LoginScreen();
                    },
                  ),
                );
              },
            ),
            OrDivider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SocalIcon(
                  iconSrc: "assets/icons/facebook.svg",
                  press: () {},
                ),
                SocalIcon(
                  iconSrc: "assets/icons/twitter.svg",
                  press: () {},
                ),
                SocalIcon(
                  iconSrc: "assets/icons/google-plus.svg",
                  press: () {},
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
