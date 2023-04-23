import 'package:facebook/constant/const.dart';

import 'package:facebook/screens/homeScreen.dart';
import 'package:flutter/material.dart';

import '../widgets/customTextButton.dart';
import '../widgets/customTextField.dart';

class LoginScreen extends StatelessWidget {
  static const String routeName = 'Login Screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Spacer(
              flex: 4,
            ),
            SizedBox(
              width: 60,
              height: 60,
              child: Image.asset('assets/images/facebookLogo.png'),
            ),
            const Spacer(
              flex: 2,
            ),
            CustomTextField(
                keyboardType: TextInputType.emailAddress,
                hintText: 'Email or Phone'),
            const Spacer(
              flex: 1,
            ),
            CustomTextField(
                keyboardType: TextInputType.visiblePassword,
                hintText: 'Password',
                secure: true),
            const Spacer(
              flex: 1,
            ),
            ElevatedButton(
              style: const ButtonStyle(
                elevation: MaterialStatePropertyAll(0),
                backgroundColor: MaterialStatePropertyAll(
                  Color(0xFF4e68a1),
                ),
                padding: MaterialStatePropertyAll(
                  EdgeInsets.symmetric(vertical: 20),
                ),
              ),
              onPressed: () {
                Navigator.pushReplacementNamed(context, HomeScreen.routeName);
              },
              child: const Text(
                'LOG IN',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFFb1c4e6),
                ),
              ),
            ),
            const Spacer(
              flex: 2,
            ),
            Column(
              children: [
                CustomTextButton(buttonText: 'Sign Up for Facebook'),
                CustomTextButton(buttonText: 'Forgot Password?'),
              ],
            ),
            const Spacer(flex: 1),
          ],
        ),
      ),
    );
  }
}
