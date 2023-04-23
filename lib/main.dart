import 'package:facebook/screens/homeScreen.dart';
import 'package:facebook/screens/loginScreen.dart';
import 'package:flutter/material.dart';

void main (){
  runApp(const Facebook());
}

class Facebook extends StatelessWidget {
  const Facebook({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: LoginScreen.routeName,
      routes: {
        LoginScreen.routeName: (context) => LoginScreen(),
        HomeScreen.routeName:(context) => HomeScreen(),

      }
    );
  }
}
