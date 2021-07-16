import 'package:ekuliner/Screens/Login/components/or_divider.dart';
import 'package:ekuliner/Screens/Login/components/social_icon.dart';
import 'package:ekuliner/constants.dart';
import 'package:ekuliner/input/input_data_user.dart';
import 'package:ekuliner/utils/auth_helper.dart';
import 'package:flutter/material.dart';
import 'package:ekuliner/Screens/Login/components/background.dart';
import 'package:ekuliner/Screens/Signup/signup_screen.dart';
import 'package:ekuliner/components/already_have_an_account_acheck.dart';
import 'package:ekuliner/components/rounded_button.dart';
import 'package:ekuliner/components/rounded_input_field.dart';
import 'package:ekuliner/components/rounded_password_field.dart';


class Body extends StatelessWidget {

  TextEditingController emailController = TextEditingController(text:'');
  TextEditingController passwordController = TextEditingController(text:'');

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
              "MASUK AKUN",
              textAlign: TextAlign.center,
              style: TextStyle(color: kPrimaryColor, fontWeight: FontWeight.bold, fontSize: 24),
            ),
            SizedBox(height: size.height * 0.03),
            RoundedInputField(
              controller: emailController,
              hintText: "E-mail/No.Telepon",
              icon: Icons.person,
              onChanged: (value) {},
            ),
            RoundedPasswordField(
              controller: passwordController,
              onChanged: (value) {},
            ),
            RoundedButton(
              text: "Masuk",
              press: () async {
                await AuthHelper.signInWithEmail(email : emailController.text, password: passwordController.text);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return InputDataUser();
                    },
                  ),
                );

                },
            ),
            SizedBox(height: size.height * 0.03),
            AlreadyHaveAnAccountCheck(
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return SignUpScreen();
                    },
                  ),
                );},
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
                  press: () async {
                    try{
                      await AuthHelper.signInWithGoogle();
                    }catch(e){
                      print(e);
                    }
                  },
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
