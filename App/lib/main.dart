import 'package:Fooduko/constants.dart';
import 'package:Fooduko/screens/home_screen.dart';
import 'package:Fooduko/screens/login_screen.dart';
import 'package:Fooduko/screens/signup_screen.dart';
import 'package:Fooduko/screens/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'screens/welcome_screen.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
         fontFamily: "Poppins",
        primaryColor: kPrimaryColor,
      ),
      initialRoute: WelcomeScreen.id,
      routes: {
        WelcomeScreen.id: (context) => WelcomeScreen(),
        LoginScreen.id: (context) => LoginScreen(),
        SignupScreen.id: (context) => SignupScreen(),
        HomeScreen.id: (context) => HomeScreen(),
      },
    );
  }
}